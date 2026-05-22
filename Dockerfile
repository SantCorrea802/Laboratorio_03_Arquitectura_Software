# Imagen base moderna para ejecutar aplicaciones Java 11
FROM eclipse-temurin:11-jre-jammy

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el JAR generado por Maven
COPY target/kbtvuelo-0.0.1-SNAPSHOT.jar app.jar

# Puerto interno de la app Spring Boot
EXPOSE 8089

# Ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "/app/app.jar"]