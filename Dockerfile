FROM maven:3.8.1-openjdk-8 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn -Dhttps.proxyHost=myproxy -Dhttps.proxyPort=8080 package


FROM tomcat:9.0.53-jdk8
RUN mkdir -p /usr/local/tomcat/webapps
RUN chmod -R 777 /usr/local/tomcat/conf
COPY --from=build /app/target/helloworld-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/helloworld.war
