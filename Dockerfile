FROM openjdk:11
WORKDIR /app
COPY . .
RUN apt-get update && apt-get install -y ant
RUN ant
CMD ["java", "-jar", "path/to/your/output.jar"]
