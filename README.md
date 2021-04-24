# Spring Native Demo [![Docker](https://github.com/Gorlah/spring-native-demo/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/Gorlah/spring-native-demo/actions/workflows/docker-publish.yml)

This project uses `spring-native` to compile a Spring Boot application to a native executable with a quick startup time. 

## Example
The executable & container startup time is < 100ms.
```shell
$ docker run --rm -it ghcr.io/gorlah/spring-native-demo
...
Started SpringNativeDemoApplication in 0.03 seconds (JVM running for 0.032)
```

The resulting image size is small too!
```shell
$ docker image ls
REPOSITORY                          TAG                           IMAGE ID       CREATED             SIZE
ghcr.io/gorlah/spring-native-demo   latest                        068eb5344f66   About an hour ago   72.9MB
```

## Quick Start

### Docker

```shell
$ docker run --rm -it -p 8080:8080 ghcr.io/gorlah/spring-native-demo:latest
$ curl -X GET http://localhost:8080/hello
hello world!
```

## Build From Source

### Native
```shell
$ git clone https://github.com/Gorlah/spring-native-demo.git
$ cd spring-native-demo
$ ./mvnw -Pnative-image package
$ target/app
```

### Docker
```shell
$ git clone https://github.com/Gorlah/spring-native-demo.git
$ cd spring-native-demo
$ docker build -t spring-native-demo .
```
