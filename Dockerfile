# Use an official OpenJDK runtime as a base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/myapp.jar /app/myapp.jar

# Expose the application port (adjust if needed)
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "myapp.jar"]
