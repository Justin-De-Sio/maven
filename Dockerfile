FROM openjdk:11-jre-slim

# Copier le JAR compilé
COPY target/*.jar /usr/app/app.jar

WORKDIR /usr/app

CMD ["java", "-jar", "app.jar"]
