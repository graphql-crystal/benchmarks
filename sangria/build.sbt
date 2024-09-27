name := "sangria"

ThisBuild / scalaVersion := "2.13.14"

scalacOptions ++= Seq("-Ywarn-unused", "-deprecation")

assembly / mainClass := Some("Server")

libraryDependencies ++= Seq(
  "org.sangria-graphql" %% "sangria" % "4.0.0",
  "org.sangria-graphql" %% "sangria-akka-http-circe" % "0.0.4",
  "com.typesafe.akka" %% "akka-actor" % "2.8.6",
  "com.typesafe.akka" %% "akka-stream" % "2.8.5",
  "com.typesafe.akka" %% "akka-http" % "10.5.3",
  "com.typesafe.akka" %% "akka-http-core" % "10.5.3",
)