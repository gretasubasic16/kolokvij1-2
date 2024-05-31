
# Koristi službenu sliku Java 17
FROM openjdk:17

# Postavljanje radnog direktorija unutar kontejnera
WORKDIR /app

# Kopiranje JAR datoteke u kontejner
COPY target/demo-0.0.1-SNAPSHOT.jar /app/app.jar

# Ekspozicija porta na kojem aplikacija sluša
EXPOSE 8080

# Pokretanje aplikacije prilikom pokretanja kontejnera
CMD ["java", "-jar", "app.jar"]

