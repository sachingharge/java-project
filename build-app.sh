#!/bin/bash
#Build source code
GRADLE_VERSION=${GRADLE_VERSION:="2.4"}

set -e
CACHED_DOWNLOAD="${HOME}/cache/gradle-${GRADLE_VERSION}-bin.zip"

rm -rf "${HOME}/.gradle/gradle"
wget --continue --output-document "${CACHED_DOWNLOAD}" "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"
unzip -o "${CACHED_DOWNLOAD}" -d "${HOME}/.gradle/"
ln -s "${HOME}/.gradle/gradle-${GRADLE_VERSION}/" "${HOME}/.gradle/gradle"

./gradlew clean build
