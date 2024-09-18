FROM openjdk:22
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=target/Dermacheck-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} Dermacheck.jar
ENTRYPOINT ["java","-jar","/Dermacheck.jar"]