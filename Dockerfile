FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY target/online_admission_process-0.0.1-SNAPSHOT.jar app.jar
ENV PORT=8080
CMD ["sh", "-c", "java -jar app.jar --server.port=$PORT"]
