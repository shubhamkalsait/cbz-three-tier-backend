FROM java:8
COPY . .
WORKDIR /opt
COPY application.properties src/main/resources/application.properties
RUN mvn clean package -Dmaven.test.skip=true
EXPOSE 8080
CMD java -jar target/spring-backend-v1.jar