FROM openjdk:17-slim AS builder

WORKDIR /app

COPY pom.xml ./
RUN mvn clean package

COPY target/*.jar ./

FROM openjdk:17-slim

WORKDIR /app


EXPOSE 8080

CMD ["java", "-jar", "testing.jar"]
