FROM maven:3.8.1-openjdk-11-slim AS maven

FROM ghcr.io/graalvm/graalvm-ce:java11-21.1.0 as build
COPY --from=maven /usr/share/maven /opt/maven
COPY src /tmp/app/src
COPY pom.xml /tmp/app
ENV PATH="/opt/maven/bin:${PATH}"
RUN gu install native-image
RUN mvn -ntp -f /tmp/app/pom.xml -Pnative-image package

FROM scratch
COPY --from=build /tmp/app/target/app /
CMD ["/app"]