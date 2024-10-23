# Use a lightweight Java image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the server jar file and other necessary files
COPY server.jar .

# Expose the default Minecraft port
EXPOSE 25565

# Run the server
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "nogui"]

