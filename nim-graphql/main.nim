import
  std/[os, strutils], chronos, chronicles,
  graphql, graphql/httpserver

{.pragma: apiPragma, cdecl, gcsafe, raises: [].}

proc queryHello(ud: RootRef, params: Args, parent: Node): RespResult {.apiPragma.} =
  return ok(resp("world"))

const queryProcs = {
  "hello": queryHello,
}

type Query = ref object of RootRef
  hello: string

proc loadSchema(ctx: GraphqlRef): GraphqlResult =
  var conf = defaultParserConf()
  conf.flags.incl pfCommentDescription

  var ud = Query()

  ctx.addResolvers(ud, "Query", queryProcs)
  ctx.parseSchemaFromFile("schema.graphql")

proc main() =
  let socketFlags = {ServerFlags.TcpNoDelay, ServerFlags.ReuseAddr}
  var ctx = GraphqlRef.new()

  let res = ctx.loadSchema()
  if res.isErr:
    debugEcho res.error
    return

  let sres = GraphqlHttpServerRef.new(ctx,
                 address = initTAddress("127.0.0.1:8000"),
                 socketFlags = socketFlags)

  if sres.isErr():
    debugEcho sres.error
    return

  let server = sres.get()
  server.start()

  runForever()

main()