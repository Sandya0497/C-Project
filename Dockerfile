FROM centos:8

RUN yum -y update && \
    yum -y install java-11-openjdk java-11-openjdk-devel maven && \
    yum clean all

WORKDIR /app
COPY pom.xml .
EXPOSE 8080
