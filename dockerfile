FROM ubuntu:latest
COPY target/* /opt
WORKDIR /opt
EXPOSE 8080
CMD java -jar target/spring-backend-v1.jar