# Java CI Pipeline

This repository contains a simple Java application integrated with a complete GitHub Actions-based CI pipeline that performs:
- ✅ Code checkout
- ✅ Java 17 setup
- ✅ Maven build & test
- ✅ Static code analysis using SonarCloud
- ✅ Uploading of the final `.jar` artifact

---

## Project Structure

```
java-ci-pipeline/
├── .github/workflows/
│   └── ci-pipeline.yml  # GitHub Actions CI workflow
├── src/
│   ├── main/java/com/example/App.java
│   └── test/java/com/example/AppTest.java
├── pom.xml              # Maven project descriptor
└── target/              # Build output (not committed)
```

---

## Technologies Used

- **Java 17** (Temurin)
- **Maven** for build and test
- **JUnit** for testing
- **SonarCloud** for code quality checks
- **GitHub Actions** for CI pipeline

---

## GitHub Actions Workflow (`ci-pipeline.yml`)

The workflow performs the following:
1. **Triggers**: on every `push` or `pull_request` to `main`
2. **Sets up** Java 17 with Temurin distribution
3. **Builds** the app using `mvn clean install`
4. **Runs tests** using `mvn test`
5. **Analyzes** the code with SonarCloud using secure GitHub Secrets:
   - `SONAR_TOKEN`
   - `SONAR_PROJECT_KEY`
   - `SONAR_ORGANIZATION`
6. **Uploads** the `.jar` file to the workflow artifacts

---

## SonarCloud Integration

To enable SonarCloud analysis, make sure the following GitHub repository secrets are configured:

| Secret Name           | Description                               |
|------------------------|-------------------------------------------|
| `SONAR_TOKEN`          | Token generated from my SonarCloud account |
| `SONAR_PROJECT_KEY`    | SonarCloud project key (e.g., `1moses1_java-ci-pipeline`) |
| `SONAR_ORGANIZATION`   | Your SonarCloud organization key (e.g., `1moses1`) |

---

## Sample Output

After a successful run, you'll see:
- ✅ Build: Passed
- ✅ Tests: Passed
- ✅ SonarCloud Analysis: Completed
- ✅ Artifact: Downloadable `.jar` file under workflow artifacts

---

## Author

**Moise Iradukunda Ingabire**  
DevOps Intern – Irembo  
[GitHub Profile](https://github.com/1moses1)
