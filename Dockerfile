FROM openjdk:8-jre-alpine

EXPOSE 8080

# Copy any jar from build/libs into the image and name it app.jar to avoid exact-name brittleness.
# Using a single wildcard is safe if your build/libs contains exactly one runtime jar for the app.
COPY build/libs/*.jar /usr/app/app.jar

WORKDIR /usr/app
ENTRYPOINT ["java", "-jar", "/usr/app/app.jar"]
