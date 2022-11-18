name := "sangria"

ThisBuild / scalaVersion := "2.13.10"

scalacOptions ++= Seq("-Ywarn-unused", "-deprecation")

assembly / mainClass := Some("Server")

libraryDependencies ++= Seq(
  "org.sangria-graphql" %% "sangria" % "3.4.1",
  "org.sangria-graphql" %% "sangria-akka-http-circe" % "0.0.3",
  "com.typesafe.akka" %% "akka-actor" % "2.7.0",
  "com.typesafe.akka" %% "akka-stream" % "2.6.20",
  "com.typesafe.akka" %% "akka-http" % "10.2.10",
  "com.typesafe.akka" %% "akka-http-core" % "10.2.10",
  "ch.qos.logback" % "logback-classic" % "1.2.11" % Runtime,
)