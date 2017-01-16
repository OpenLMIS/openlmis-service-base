# OpenLMIS Service Base
This image has the common dependencies needed to run an OpenLMIS 3.x Independent Service. 

# Usage
1. Add ``FROM openlmis/service-base `` at the top of Dockerfile.
2. Copy the build results to container's root, i.e.:
```
COPY build/libs/*.jar /service.jar
COPY build/demo-data /demo-data
COPY build/consul /consul
```
3. The service and its extensions will start automatically, it is not required to define ``CMD``.
