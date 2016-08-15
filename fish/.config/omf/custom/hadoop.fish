set -x HADOOP_PORT_RM 8000
set -x HADOOP_PORT_JHS 8001
alias hdcluster "hadoop jar /usr/lib/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-client-jobclient-2.7.2-tests.jar minicluster -rmport $HADOOP_PORT_RM -jhsport $HADOOP_PORT_JHS"
