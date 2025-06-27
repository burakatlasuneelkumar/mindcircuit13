# Use an official OpenJDK runtime as the base image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the Maven build stage
COPY target/mindcircuitbatch13-2.246.war /app/mindcircuitbatch13.war

# Expose the application port (adjust if necessary)
EXPOSE 8082

# Run the application
ENTRYPOINT ["java", "-jar", "/app/mindcircuitbatch13.jar"]
