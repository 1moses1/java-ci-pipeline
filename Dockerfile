# Using now a lightweight JRE-based image
FROM eclipse-temurin:17-jre

# Create a non-root user
RUN useradd -m appuser

# Set the working directory
WORKDIR /app

# Copy the JAR explicitly (see fix #4 below)
COPY target/java-ci-app-1.0.0.jar app.jar

# Change file ownership and switch user
RUN chown -R appuser:appuser /app
USER appuser

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]