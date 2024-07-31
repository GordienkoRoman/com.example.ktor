# Use the official OpenJDK image from the Docker Hub
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the build artifacts from the host to the container
COPY build/libs/com.example.ktor-all.jar app.jar

# Expose the port Ktor runs on
EXPOSE 8080

# Run the JAR file
CMD ["java", "-jar", "app.jar"]