FROM zookeeper:latest
RUN rm -rf /data/myid
ADD ./myid /data/
RUN rm -rf /apache-zookeeper-3.8.0-bin/conf/zoo.cfg
ADD ./zoo.cfg /apache-zookeeper-3.8.0-bin/conf/
WORKDIR /apache-zookeeper-3.8.0-bin
CMD ./bin/zkServer.sh start