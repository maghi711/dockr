FROM ubuntu:20.04
LABEL name or email of the maintainer
RUN apt-get -y update
RUN apt-get -y install openjdk-8-jdk wget
RUN mkdir /home/hello
COPY Hello.java /home/hello
WORKDIR /home/hello or RUN cd /home/hello
RUN javac Hello.java
CMD [“java”, “Hello”]

