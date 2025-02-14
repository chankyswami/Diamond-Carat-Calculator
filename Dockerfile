# Use an official jdk17 image as a parent image
FROM docker.io/madiva/openjdk17:latest


# Set the working directory in the container
WORKDIR /opt

# Copy the JAR file into /opt
COPY target/*.jar app.jar

# Expose at 5000
EXPOSE 5000

# Start application
CMD ["java", "-jar" "app.jar"]


