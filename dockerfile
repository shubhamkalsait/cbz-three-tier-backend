FROM java:latest
RUN sudo apt update -y && sudo apt install openjdk-8-jdk -y
RUN sudo apt install maven -y
COPY . /opt
WORKDIR /opt
COPY application.properties src/main/resources/application.properties
RUN mvn clean package -Dmaven.test.skip=true
EXPOSE 8080
CMD java -jar target/spring-backend-v1.jar