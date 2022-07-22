name := "sangria"

ThisBuild / scalaVersion := "2.13.8"

scalacOptions ++= Seq("-Ywarn-unused", "-deprecation")

assembly / mainClass := Some("Server")

libraryDependencies ++= Seq(
  "org.sangria-graphql" %% "sangria" % "3.0.1",
  "org.sangria-graphql" %% "sangria-akka-http-circe" % "0.0.2",
  "com.typesafe.akka" %% "akka-actor" % "2.6.19",
  "com.typesafe.akka" %% "akka-stream" % "2.6.19",
  "com.typesafe.akka" %% "akka-http" % "10.2.9",
  "com.typesafe.akka" %% "akka-http-core" % "10.2.9",
  "ch.qos.logback" % "logback-classic" % "1.2.11" % Runtime,
)