FROM openjdk:11-jre-slim

# Copier le JAR compilé
COPY /var/jenkins_home/workspace/ma-pipeline-maven/target/*.jar /usr/app/app.jar

WORKDIR /usr/app

CMD ["java", "-jar", "app.jar"]
