FROM adoptopenjdk/openjdk11
COPY target/hello-world-0.0.1-SNAPSHOT.jar home/hello-world-0.0.1-SNAPSHOT.jar
CMD ["java","-jar","home/hello-world-0.0.1-SNAPSHOT.jar"]