FROM tomcat:9.0.53-jdk8
COPY target/helloworld.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]

