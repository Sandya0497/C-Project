FROM tomcat:9.0.53-jdk8
COPY target/helloworld-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/helloworld.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
