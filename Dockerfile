# Use Maven with Java 21 to build the project
FROM maven:3.9.6-eclipse-temurin-21 AS builder

WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Use JDK 21 to run the app
FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY --from=builder /app/target/*.jar app.jar
ENV PORT=8080
CMD ["sh", "-c", "java -jar app.jar --server.port=$PORT"]
