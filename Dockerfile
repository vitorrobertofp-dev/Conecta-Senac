# Build stage
FROM eclipse-temurin:20-jdk AS builder
WORKDIR /app
COPY demo/gradlew .
COPY demo/gradle ./gradle
COPY demo/build.gradle settings.gradle ./
COPY demo/src ./src
RUN ./gradlew bootJar --no-daemon

# Runtime stage
FROM eclipse-temurin:20-jre
WORKDIR /app
COPY --from=builder /app/build/libs/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
