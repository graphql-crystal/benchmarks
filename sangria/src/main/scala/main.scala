import sangria.schema._
import akka.actor.ActorSystem
import akka.http.scaladsl.server._
import akka.http.scaladsl.Http
import sangria.http.akka.circe.CirceHttpSupport

object Server extends App with CirceHttpSupport {
  implicit val system = ActorSystem("sangria-server")
  import system.dispatcher

  val QueryType = ObjectType(
    "Query",
    fields[Any, Any](
      Field("hello", StringType, resolve = _ => "world")
    )
  )

  val schema = Schema(QueryType)

  val route: Route = graphql()(schema)

  Http().newServerAt("127.0.0.1", 8000).bindFlow(route)
}
