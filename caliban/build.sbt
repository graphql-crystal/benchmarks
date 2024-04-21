name         := "caliban"
scalaVersion := "3.4.1"

assembly / mainClass := Some("Main")

assembly / assemblyMergeStrategy := {
  case PathList("META-INF", "MANIFEST.MF")                  => MergeStrategy.discard
  case PathList("META-INF", "io.netty.versions.properties") => MergeStrategy.first
  case x                                                    => MergeStrategy.first
}

libraryDependencies ++= Seq(
  "com.github.ghostdogpr" %% "caliban-quick" % "2.6.0"
)
