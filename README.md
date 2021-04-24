# Spring Native Demo

This project uses `spring-native` to compile a Spring Boot application to a native executable with a quick startup time. Example:
```shell
$ docker run --rm -it ghcr.io/gorlah/spring-native-demo
2021-04-24 22:34:10.027  INFO 1 --- [           main] o.s.nativex.NativeListener               : This application is bootstrapped with code generated with Spring AOT
2021-04-24 22:34:10.029  INFO 1 --- [           main] c.g.demo.SpringNativeDemoApplication     : Starting SpringNativeDemoApplication v0.0.1-SNAPSHOT using Java 11.0.11 with PID 1 (/app started by ? in /)
2021-04-24 22:34:10.029  INFO 1 --- [           main] c.g.demo.SpringNativeDemoApplication     : No active profile set, falling back to default profiles: default
2021-04-24 22:34:10.054  INFO 1 --- [           main] o.s.b.web.embedded.netty.NettyWebServer  : Netty started on port 8080
2021-04-24 22:34:10.055  INFO 1 --- [           main] c.g.demo.SpringNativeDemoApplication     : Started SpringNativeDemoApplication in 0.03 seconds (JVM running for 0.032)
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