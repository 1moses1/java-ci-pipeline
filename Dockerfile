# Use a lightweight JRE base image
FROM eclipse-temurin:17-jre

# Create a non-root user
RUN useradd -m appuser

# Set working directory
WORKDIR /app

# Accept build-time JAR name
ARG JAR_NAME

# Copy the JAR dynamically using build argument
COPY ${JAR_NAME} app.jar

# Set file ownership and drop privileges
RUN chown -R appuser:appuser /app
USER appuser

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]
