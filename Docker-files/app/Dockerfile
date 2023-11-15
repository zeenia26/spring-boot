FROM eclipse-temurin:17-jdk-alpine

# Copy the JAR file into the container at /app
COPY *.jar app.jar

# Expose the port that the Spring Boot app will run on
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "/app.jar"]

