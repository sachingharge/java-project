# Use OpenJDK image
FROM java:openjdk-8-alpine

# Add JAR file
ADD tmp/gs-spring-boot-*.jar /opt/

# Expose port
EXPOSE 8080

# Copy Entrypoint script
COPY app-entrypoint.sh /opt/app-entrypoint.sh

# Run appplication
ENTRYPOINT ["/opt/app-entrypoint.sh"]
