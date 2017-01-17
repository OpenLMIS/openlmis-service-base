#!/bin/sh

if [ -d "consul" ]; then
    node consul/registration.js -c register -f consul/config.json -r consul/api-definition.yaml
else
    echo "Warning: could not find consul directory"
fi
if [ -d "extensions" ]; then
    java $JAVA_OPTS -classpath extensions/*:service.jar org.springframework.boot.loader.JarLauncher && java $JAVA_OPTS -jar service.jar
else
    java $JAVA_OPTS -jar service.jar
fi
