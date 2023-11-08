name := "sangria"

ThisBuild / scalaVersion := "2.13.12"

scalacOptions ++= Seq("-Ywarn-unused", "-deprecation")

assembly / mainClass := Some("Server")

libraryDependencies ++= Seq(
  "org.sangria-graphql" %% "sangria" % "3.5.3",
  "org.sangria-graphql" %% "sangria-akka-http-circe" % "0.0.3",
  "com.typesafe.akka" %% "akka-actor" % "2.8.4",
  "com.typesafe.akka" %% "akka-stream" % "2.8.4",
  "com.typesafe.akka" %% "akka-http" % "10.5.2",
  "com.typesafe.akka" %% "akka-http-core" % "10.5.2",
  "ch.qos.logback" % "logback-classic" % "1.2.11" % Runtime,
)