# This is a Mult-stage Dockerfile


# Stage 1: Build
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Run
FROM eclipse-temurin:17-jre
WORKDIR /app
COPY --from=build /app/target/hello-app-1.0-SNAPSHOT-jar-with-dependencies.jar app.jar
CMD ["java", "-jar", "app.jar"]

