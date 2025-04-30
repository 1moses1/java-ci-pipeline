# Java CI Pipeline with GitHub Actions

## 🔧 What the Pipeline Does

This GitHub Actions workflow automates:
- Building the Java application using Maven.
- Running unit tests to verify correctness.
- Performing static code analysis via SonarCloud.
- Storing the final JAR build artifact for later use.

## 🔨 Tools Integrated

- **Maven**: Used for compiling and testing the Java code.
- **GitHub Actions**: CI automation platform.
- **SonarCloud**: Static code analysis and code quality reports.
- **Upload Artifact**: Saves the `.jar` file produced by the Maven build.

## 🔐 Secrets and Environment Variables

| Variable Name        | Description                           |
|----------------------|---------------------------------------|
| `SONAR_TOKEN`        | Token for authenticating to SonarCloud |
| `SONAR_PROJECT_KEY`  | SonarCloud project key                 |
| `SONAR_ORGANIZATION` | SonarCloud organization identifier     |

These secrets are configured securely in the GitHub repository settings.

## 📦 Build Artifact

- **Artifact Name**: `java-build`
- **Artifact Path**: `target/*.jar`
- **Stored Using**: `actions/upload-artifact@v4`
