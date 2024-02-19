# FROM openjdk:17-slim AS builder

# WORKDIR /app

# COPY pom.xml ./
# RUN mvn clean package

# COPY target/testing.jar ./

# FROM openjdk:17-slim

# WORKDIR /app


# EXPOSE 5000

# CMD ["java", "-jar", "testing.jar"]
FROM openjdk:17-jdk-slim AS builder

WORKDIR /app

COPY pom.xml ./
RUN mvn package

FROM openjdk:17-jre-slim

WORKDIR /app

COPY --from=builder /app/target/*.jar ./

EXPOSE 5000

CMD ["java", "-jar", "*.jar"]
