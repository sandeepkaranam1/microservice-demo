# 1. Start with a lightweight Java image
FROM openjdk:21

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy the generated JAR file from the host machine to the container
COPY target/microservice-demo-0.0.1-SNAPSHOT.jar /app/microservice.jar

# 4. Expose the application port (Spring Boot by default runs on port 8080)
EXPOSE 8080

# 5. Run the JAR file
ENTRYPOINT ["java", "-jar", "/app/microservice.jar"]
