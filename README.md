# Spring Native Demo

This project uses `spring-native` to compile a Spring Boot application to a native executable with a quick startup time. Example:
```shell
$ docker run --rm -it ghcr.io/gorlah/spring-native-demo
...
Started SpringNativeDemoApplication in 0.03 seconds (JVM running for 0.032)
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
$ ./mvnw -Pnative-image package
$ target/app
```

### Docker
```shell
$ git clone https://github.com/Gorlah/spring-native-demo.git
$ cd spring-native-demo
$ docker build -t spring-native-demo .
```