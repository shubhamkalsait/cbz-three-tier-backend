FROM ubuntu:latest
COPY . .
EXPOSE 8080
CMD java -jar target/spring-backend-v1.jar