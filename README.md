🚀 DevOps Application Deployment Project
📘 Overview

This project demonstrates end-to-end DevOps practices — containerizing a React application, automating build and deployment with Jenkins, hosting on AWS EC2, and setting up monitoring using Prometheus and Grafana.

🧩 Application

Repository: https://github.com/sriram-k-krishnan/devops-build

Type: React application

Running Port: 80 (HTTP)

🐳 Docker Setup

Dockerfile created to build the React app and serve it using NGINX.

docker-compose.yml used for managing container deployment.

Scripts:

build.sh → Builds Docker image.

deploy.sh → Deploys the container on EC2 instance.

🧭 Version Control

Used Git CLI for all Git operations.

Code pushed to GitHub:

dev branch → Development build

master branch → Production build

☁️ Docker Hub

Public repo (dev): kalaiyarasi15/react-dev

Private repo (prod): kalaiyarasi15/react-prod

⚙️ Jenkins Pipeline

Jenkins configured on EC2 instance.

Integrated with GitHub for automatic triggers.

Pipeline logic:

Push to dev → Builds image & pushes to dev repo.

Merge to master → Pushes image to prod repo & deploys app.

 AWS EC2 Deployment

EC2 instance type: t2.micro (Ubuntu)

Security Group:

Port 80 open to all (0.0.0.0/0)

SSH (22) access restricted to personal IP

 Monitoring

Prometheus: Collects container and system metrics

Grafana: Visualizes metrics with dashboards

NGINX Exporter: Tracks app-level statistics

Optional: Alerts can be added for uptime or health checks

 Screenshots (Added in repo)

Jenkins configuration and build success

AWS EC2 instance & Security Group setup

Docker Hub repositories with image tags

Application deployed in browser

Grafana dashboard (monitoring)

✅ Deliverables

GitHub repo with code & scripts

Docker Hub (dev + prod images)

Live app URL

Monitoring dashboard screenshot

💡 Author

Kalaiyarasi Panneerselvam
DevOps Engineer | AWS • Docker • Jenkins • Kubernetes
