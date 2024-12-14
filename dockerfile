FROM ubuntu:latest
COPY . .
WORKDIR /opt
EXPOSE 8080
CMD java -jar target/spring-backend-v1.jar