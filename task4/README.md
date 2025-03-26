# CI/CD Pipeline for Sample Application

This repository contains a simple Python-based sample application with a CI/CD pipeline configured using GitLab CI/CD.

## Pipeline Stages

- **Test**: Runs unit tests using Python before building any Docker image.
- **Build**: Builds and pushes a Docker image to the GitLab registry.

## Setup Instructions

1. Push this repository to your GitLab project.
2. Ensure GitLab CI/CD is enabled.
3. Set up a GitLab CI/CD runner (shared, specific, or cloud-based).
4. On every commit to `main`, the pipeline will:
   - Run Python unit tests.
   - If tests pass, build and push the Docker image.

## Assumptions

- Docker-in-Docker (`docker:dind`) is used for both build and test stages.
- `Python 3.11` is used for the application.
- A simple test suite is provided in the `tests/` folder.
