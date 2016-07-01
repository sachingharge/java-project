# Use OpenJDK image
FROM java:openjdk-8-alpine

RUN mkdir /opt

# Copy JAR file
COPY /data/*.jar /opt/gs-spring-boot.jar

# Expose port
EXPOSE 8080

# Run appplication
CMD ["java","-jar","/opt/gs-spring-boot.jar"]
