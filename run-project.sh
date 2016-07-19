#!/usr/bin/env bash

# Output the commands we run
set -x

# If any command fails, fail
set -e

sbt compile package assembly > sbtlog || (echo "sbt failed" && cat ./sbtlog && exit 1)

SPARK_SUBMIT_SCRIPT=$SPARK_HOME/bin/spark-submit
ASSEMBLY_JAR=./target/scala-2.10/spark-scala-microboilerplate-assembly-0.0.1.jar

# Run 
# spark-submit needs full class name: packageName.className
$SPARK_SUBMIT_SCRIPT \
	--class Boilerplate \
	--master local \
	$ASSEMBLY_JAR \