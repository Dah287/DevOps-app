# Étape 1 : Construire l'application avec Maven et OpenJDK 17
FROM maven:3.8.5-openjdk-17-slim AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Étape 2 : Exécuter l'application avec OpenJDK 17
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/*.jar ./app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
