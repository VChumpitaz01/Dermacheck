# Fase de construcción
FROM maven:3.8.1-openjdk-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Fase de ejecución
FROM openjdk:22
WORKDIR /app
COPY --from=build /app/target/Dermacheck-0.0.1-SNAPSHOT.jar Dermacheck.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/Dermacheck.jar"]
