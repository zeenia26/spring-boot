FROM openjdk:8

# Copy the JAR file into the container at /app
COPY project_tracker-0.0.1-SNAPSHOT.jar project_tracker-0.0.1-SNAPSHOT.jar

# Expose the port that the Spring Boot app will run on
EXPOSE 8085

# Command to run the application
CMD ["java", "-jar", "/project_tracker-0.0.1-SNAPSHOT.jar"]

