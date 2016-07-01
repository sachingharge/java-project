# Use OpenJDK image
FROM java:openjdk-8

# Expose port
EXPOSE 8080

# Run appplication
# CMD ["java","-jar","/opt/gs-spring-boot.jar"]

ADD . /
