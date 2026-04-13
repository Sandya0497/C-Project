FROM maven:3.8.1-openjdk-8 AS build
WORKDIR /app
RUN  yum update 
COPY pom.xml .
EXPOSE 8080
