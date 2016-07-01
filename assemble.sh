mkdir -p /data
./gradlew clean assemble
cp build/libs/*.jar /data
ls -la /data
