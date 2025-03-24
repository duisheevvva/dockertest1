FROM openjdk:17 as build
WORKDIR /app
COPY . ./
RUN microdnf install findutils
RUN chmod +x gradlew
RUN ./gradlew build -x test

FROM openjdk:17-slim
WORKDIR /app
COPY --from=build /app/build/libs/dockertest1-0.0.1-SNAPSHOT.jar .
CMD["java", "-jar", "dockertest1-0.0.1-SNAPSHOT.jar"]
EXPOSE 2025


