#!/bin/sh
set -e

echo ""
echo "==============================================================="
echo "Create data directory to copy jar file"
echo "mkdir -p /data"
mkdir -p /data
echo "==============================================================="
echo "Run gradlew clean and assemble tasks"
echo "./gradlew clean assemble"
./gradlew clean assemble
echo "==============================================================="
echo "Copy jar file to data directory"
echo "cp -rf build/libs/*.jar /data"
cp -rf build/libs/*.jar /data
echo "==============================================================="
echo "Gradle build completed successfully"
