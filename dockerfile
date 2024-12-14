FROM ubuntu:latest
COPY . opt/
EXPOSE 8080
CMD java -jar target/spring-backend-v1.jar