import std;

import graphql;
import graphql.schema.directives;

import vibe.vibe;

interface Query {
    string hello();
}

class Schema {
    Query queryType;
    DefaultDirectives directives;
}

struct CustomContext {
    int userId;
}

GraphQLD!(Schema, CustomContext) graphqld;

void main()
{
    GQLDOptions opts;
    opts.asyncList = AsyncList.no;
    graphqld = new GraphQLD!(Schema,CustomContext)(opts);

    graphqld.setResolver("queryType", "hello",
			delegate(string name, Json parent, Json args,
					ref CustomContext con) @safe
			{
				Json ret = Json.emptyObject();
				ret["data"] = "world";
				return ret;
			}
		);

    auto settings = new HTTPServerSettings;
	settings.port = 8000;
	settings.bindAddresses = ["::1", "127.0.0.1"];
	auto listener = listenHTTP(settings, &handler);

    scope(exit)
        listener.stopListening();

    runApplication();
}

void handler(HTTPServerRequest req, HTTPServerResponse res)
{
	import graphql.validation.querybased;
	import graphql.validation.schemabased;

	// lex and parse query...comes in
	// a json format. To be used with Schema.
	Json j = req.json;
	string toParse = j["query"].get!string();
	Json vars = Json.emptyObject();

	auto l = Lexer(toParse);
	auto p = Parser(l);

	try {
		Document d = p.parseDocument();
		const(Document) cd = d;
		auto fv = new QueryValidator(d);
		fv.accept(cd);

	    noCylces(fv.fragmentChildren);
	    allFragmentsReached(fv);

		SchemaValidator!Schema sv = new SchemaValidator!Schema(d,
				graphqld.schema
			);
		sv.accept(cd);

		CustomContext con;
		// execute GraphQL query
		Json gqld = graphqld.execute(d, vars, con);

		// Send query response as JSON
		res.writeJsonBody(gqld);
		return;
	} catch(Throwable e) {
		auto app = appender!string();
		while(e) {
			writeln(e.toString());
			app.put(e.toString());
			e = cast(Exception)e.next;
		}
		Json ret = Json.emptyObject;
		ret.insertError(app.data);
		res.writeJsonBody(ret);
		return;
	}
}
