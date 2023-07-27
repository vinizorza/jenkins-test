FROM arm64v8/openjdk:17
EXPOSE 8081
ARG JAR_FILE=target/jenkins-test-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]