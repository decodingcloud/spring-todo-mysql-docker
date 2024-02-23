# Use AdoptOpenJDK as base image
FROM amazoncorretto:17.0.7-alpine

# Set working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/todo-mysql-docker-0.0.1-SNAPSHOT.jar /app/todo-mysql-docker-0.0.1-SNAPSHOT.jar

# Expose the port that your application runs on
EXPOSE 8080

# Define the command to run your application
CMD ["java", "-jar", "todo-mysql-docker-0.0.1-SNAPSHOT.jar"]