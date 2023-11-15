FROM openjdk:latest

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/*.jar /app/app.jar

# Expose the port that the Spring Boot app will run on
EXPOSE 8085

# Command to run the application
CMD ["java", "-jar", "app.jar"]

