# Java CI Pipeline + Dockerized Release

This repository contains a simple Java application integrated with a complete DevOps workflow powered by GitHub Actions. The pipeline is split into two key workflows:

* ✅ `ci-pipeline.yml`: Handles Continuous Integration (build, test, code quality, artifact storage)
* ✅ `release.yml`: Automates Docker image build and publication to Docker Hub upon GitHub release

## 🚀 CI/CD Features

### ✅ CI Pipeline (`ci-pipeline.yml`)
* Code checkout
* Java 17 setup
* Maven build and test
* Static code analysis using SonarCloud
* Upload of final `.jar` build artifact

### 📦 Release Pipeline (`release.yml`)
* Triggered when a new GitHub Release is published
* Builds the Java application into a `.jar`
* Builds a Docker image from the `Dockerfile`
* Tags Docker image with both the version (`v1.0.0`, etc.) and `latest`
* Pushes Docker image to Docker Hub

## 📁 Project Structure

```
java-ci-pipeline/
├── .github/workflows/
│   ├── ci-pipeline.yml   # GitHub Actions CI workflow
│   └── release.yml       # GitHub Actions release workflow
├── Dockerfile            # Containerization setup for the app
├── src/
│   ├── main/java/com/example/App.java
│   └── test/java/com/example/AppTest.java
├── pom.xml               # Maven project descriptor
└── target/               # Build output (not committed)
```

## 🛠 Technologies Used

* **Java 17** (Temurin)
* **Maven** for build and dependency management
* **JUnit** for unit testing
* **SonarCloud** for static code analysis
* **Docker** for containerization
* **GitHub Actions** for CI/CD

## 🔐 GitHub Secrets Required

### For SonarCloud (`ci-pipeline.yml`)

| Secret Name | Description |
|-------------|-------------|
| `SONAR_TOKEN` | Token generated from SonarCloud account |
| `SONAR_PROJECT_KEY` | Unique SonarCloud project key |
| `SONAR_ORGANIZATION` | Your SonarCloud organization name |

### For DockerHub (`release.yml`)

| Secret Name | Description |
|-------------|-------------|
| `DOCKER_USERNAME` | Your Docker Hub username |
| `DOCKER_PASSWORD` | Your Docker Hub personal access token |

## 🧪 Sample Outputs

After running the workflows, you can expect:

* ✅ CI pipeline to confirm build and test success
* ✅ SonarCloud report published
* ✅ JAR uploaded to workflow artifacts
* ✅ Docker image available on Docker Hub:
   * `docker pull <username>/java-ci-app:latest`
   * `docker pull <username>/java-ci-app:v1.0.0`

## 🧑‍💻 Author

**Moise Iradukunda Ingabire**  
DevOps Intern – Irembo  
[GitHub Profile](https://github.com/your-username)
