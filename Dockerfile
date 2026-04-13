# Use official Tomcat base image
FROM tomcat:9.0.53-jdk8

# Set working directory
WORKDIR /usr/local/tomcat

# Copy your WAR file into Tomcat’s webapps directory
COPY helloworld.war ./webapps/

# Expose Tomcat default port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
