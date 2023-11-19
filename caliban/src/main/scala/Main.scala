import caliban.*
import caliban.quick.*
import caliban.schema.Schema
import zio.ZIOAppDefault

case class Query(hello: String) derives Schema.SemiAuto

object Main extends ZIOAppDefault {
  private val api = graphQL(RootResolver(Query("world")))
  def run         = api.runServer(8000, "/")
}
