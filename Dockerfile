# Use the official OpenJDK image as the base image
FROM openjdk:17-jdk

# Set the working directory inside the container
WORKDIR /usr/src/minecraft

# Copy your server jar file into the container
COPY server.jar .

# Expose the default Minecraft port
EXPOSE 25565

# Run the Minecraft server
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "nogui"]
