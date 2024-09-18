# OpenLMIS Service Base
This image has the common dependencies needed to run an OpenLMIS 3.x Independent Service. 

Currently the image is based on alpine-java version:  
[![Docker Image Version (tag)](https://img.shields.io/docker/v/_/alpine/3.13)](https://hub.docker.com/layers/library/alpine/3.13/images/sha256-16fd981ddc557fd3b38209d15e7ee8e3e6d9d4d579655e8e47243e2c8525b503?context=explore)
### Important Note:
It is highly suggested to check the base image for vulnerabilities and update the version if necessary.

# Usage
1. Add ``FROM openlmis/service-base `` at the top of Dockerfile.
2. Copy the build results to container's root, i.e.:
```
COPY build/libs/*.jar /service.jar
COPY build/demo-data /demo-data
COPY build/consul /consul
```
3. The service and its extensions will start automatically, it is not required to define ``CMD``.
