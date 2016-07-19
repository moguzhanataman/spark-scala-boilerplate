import AssemblyKeys._ // put this at the top of the file

assemblySettings

name := "spark-scala-microboilerplate"

version := "0.0.1"

scalaVersion := "2.10.4"

// additional libraries
libraryDependencies ++= Seq(
 "org.apache.spark" %% "spark-core" % "1.6.2" % "provided"
)
