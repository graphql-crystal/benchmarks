import graphene
from flask import Flask
from graphql_server.flask import GraphQLView

class Query(graphene.ObjectType):
    hello = graphene.String()
    def resolve_hello(self, info):
        return 'world'

schema = graphene.Schema(query=Query)

app = Flask(__name__)

app.add_url_rule('/graphql', view_func=GraphQLView.as_view(
    'graphql',
    schema=schema.graphql_schema,
))

if __name__ == '__main__':
    app.run()