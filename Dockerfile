FROM zookeeper:latest
RUN apt-get install -y vim
RUN apt-get install openjdk-8-jdk -y
RUN rm -rf /data/myid
ADD ./myid /data/
RUN rm -rf /apache-zookeeper-3.8.0-bin/conf/zoo.cfg
ADD ./zoo.cfg /apache-zookeeper-3.8.0-bin/conf/
WORKDIR /apache-zookeeper-3.8.0-bin
EXPOSE 2181
EXPOSE 2888
EXPOSE 3888
CMD bash init.sh