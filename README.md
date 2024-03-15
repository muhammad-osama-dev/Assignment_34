# CI/CD using github actions on a simple python application 

## Introduction

This repository contains a sample Python Flask application along with CI/CD pipelines implemented using GitHub Actions.

## Table of Contents

1. [Installation](#installation)
2. [Usage](#usage)
3. [Continuous Integration/Continuous Deployment (CI/CD)](#continuous-integrationcontinuous-deployment-cicd)
    - [Build](#build)
    - [Test](#test)
    - [Dockerize](#dockerize)
    - [Deployment](#deployment)


## Installation

To run this application locally, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/muhammad-osama-dev/Assignment_34.git
   cd Assignment_34
   pip install -r requirements.txt
   ```
## Usage 
 ```bash
   python app.py
   ```
Once the server is running, you can access the application at http://localhost:5000/.

## Continuous Integration/Continuous Deployment (CI/CD)

This repository includes CI/CD pipelines implemented using GitHub Actions. The pipeline consists of the following stages:

Build: Building the Python application.
Test: Running unit tests and reporting the results.
Dockerize: Creating a Dockerfile and docker-compose.yml to containerize the application.
Deploy: Simulating a deployment process using Docker (no actual deployment needed).
 

