# Starting from the Openjdk-8 container
FROM java:openjdk-8-jdk

# Copying all gradle files necessary to install gradle with gradlew
COPY src src
COPY gradle gradle
COPY \
  build.gradle \
  gradlew \
  ./

ADD . /
