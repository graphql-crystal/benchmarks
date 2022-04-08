from tartiflette import Resolver
from aiohttp import web
from tartiflette_aiohttp import register_graphql_handlers

@Resolver("Query.hello")
async def resolver_hello(parent, args, ctx, info):
    return "world"

sdl = """
    type Query {
        hello: String!
    }
"""

web.run_app(
    register_graphql_handlers(
        web.Application(),
        engine_sdl=sdl
    ),
    port=8000,
    print=None,
)
