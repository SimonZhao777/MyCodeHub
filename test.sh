SPARK_HOME="/opt/app/spark-2.0.1"

COMMON_SETTING="--master yarn-client --num-executors 60 --executor-cores 3 --executor-memory 8g --driver-memory 8g"
WORK_JAR="XgboostTest-1.0-SNAPSHOT-jar-with-dependencies.jar"
MAIN_CLASS="MavenScala.MyRouteMain"


start_time=$(date "+%s")

$SPARK_HOME/bin/spark-submit $COMMON_SETTING --class MavenScala.MyRouteMain $WORK_JAR > log.txt

finish_time=$(date "+%s")
elapse_time=$((finish_time - start_time))
echo "time used: $elapse_time seconds" >> $LogFile

