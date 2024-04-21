import caliban.*
import caliban.quick.*
import caliban.schema.Schema
import zio.*

case class Query(hello: String) derives Schema.SemiAuto

object Main extends ZIOAppDefault {
  override val bootstrap: ZLayer[ZIOAppArgs, Any, Any] =
    ZLayer.make[Any](
      Runtime.setExecutor(Executor.makeDefault(false)),
      ZLayer.scoped(ZIO.withRuntimeFlagsScoped(RuntimeFlags.disable(RuntimeFlag.FiberRoots)))
    )

  private val api = graphQL(RootResolver(Query("world")))

  def run = ZIO.yieldNow *> api.runServer(8000, "/graphql")
}
