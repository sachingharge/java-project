# Starting from the Openjdk-8 container
FROM java:openjdk-8-jdk

# Set the WORKDIR. All following commands will be run in this directory.
WORKDIR /app

# Copying all gradle files necessary to install gradle with gradlew
COPY src src
COPY gradle gradle
COPY \
  build.gradle \
  gradlew \
  ./

# Run build
RUN ./gradlew clean assemble && cp build/libs/hi.jar /data
