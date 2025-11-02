FROM maven:4.0.0-rc-4-eclipse-temurin-17-alpine as build
WORKDIR /app
COPY . .
RUN mvn clean install

FROM eclipse-temurin:17.0.6_10-jdk
WORKDIR /app
COPY --from=build /app/target/demoapp.jar /apps/
EXPOSE 8080
CMD ["java", "-jar", "demoapp.jar"]