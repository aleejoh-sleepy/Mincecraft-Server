FROM openjdk:17-jdk
WORKDIR /app
COPY server.jar ./
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "nogui"]
