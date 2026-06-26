# Advanced Dockerized Web Application

An automated, production-ready Docker deployment featuring custom Nginx routing, container healthchecks, and a Bash deployment script.

## Key Features
* **Containerization:** Built a lightweight, secure container using `nginx:alpine`.
* **Custom Nginx Configuration:** Overrode default configurations with custom routing and error handling (`nginx.conf`).
* **Healthchecks:** Implemented Docker `HEALTHCHECK` to continuously monitor container availability and application uptime.
* **Automation:** Developed a Bash script (`deploy.sh`) to automate the cleanup, build, and deployment lifecycle.

## Technologies Used
* **Containerization:** Docker
* **Web Server:** Nginx
* **Scripting:** Bash (Linux Shell)
* **Operating System:** Ubuntu Linux / Alpine Linux (Base Image)

## Project Structure
* `index.html`: The static web application.
* `nginx.conf`: Custom routing and error page configuration for Nginx.
* `Dockerfile`: Instructions for building the custom Nginx image.
* `deploy.sh`: Automation script for zero-downtime deployment.

## Usage Instructions
1. **Clone the repository and navigate to the directory.**
2. **Make the deployment script executable:**
   ```bash
   chmod +x deploy.sh
