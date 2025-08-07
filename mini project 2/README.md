Trend React App Deployment – DevOps Project
This project demonstrates complete end-to-end deployment of a React application using modern DevOps practices. The application is deployed to a production-ready environment on AWS using Docker, Terraform, Jenkins CI/CD, Kubernetes (EKS), and monitored with Prometheus & Grafana.

 Application
App Type: React.js (frontend)

Cloned From: https://github.com/Vennilavan12/Trend.git

Runs on: Port 3000

 Docker
Dockerfile created to containerize the React app.

Image built and tested locally.

Image pushed to DockerHub:

docker build -t trend-app .
docker tag trend-app:latest kalaiyarasi15/trend-app:latest
docker push kalaiyarasi15/trend-app:latest
 Terraform
Infrastructure was provisioned using Terraform:

 VPC

 Subnets

 Internet Gateway

 EC2 instance for Jenkins

 IAM Roles for EKS & EC2

 EKS Cluster (trend-cluster)

Command used:

terraform init
terraform apply
 DockerHub
DockerHub Repo: https://hub.docker.com/repository/docker/kalaiyarasi15/trend-app

 Kubernetes (EKS)
Created EKS cluster using Terraform.

Wrote deployment.yaml and service.yaml.

Deployed using kubectl through Jenkins pipeline.

Exposed via LoadBalancer (NodePort or ALB).

kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
CI/CD Pipeline with Jenkins
Installed Jenkins on EC2 instance.

Installed plugins: Docker, Kubernetes, Git, Pipeline, BlueOcean, etc.

Integrated with GitHub using Webhooks.

Created a Jenkins Pipeline (Jenkinsfile) that:

Pulls code from GitHub

Builds Docker image

Pushes to DockerHub

Deploys to EKS using kubectl

 Git & Version Control
GitHub Repo: https://github.com/kalaiyarasi1511/documents

.gitignore and .dockerignore added

All Terraform, YAML, Docker, and Jenkinsfile committed.

 Monitoring with Prometheus & Grafana
Installed Prometheus & Grafana on EC2 instance.

Node Exporter configured.

Prometheus data source added to Grafana.

Created dashboard for metrics:

CPU

Memory

Node health

EKS workload visibility

 Submission Checklist
Component	Completed
React App Cloned	
Dockerized	
Terraform Infra Setup	
DockerHub Repo	
EKS Cluster	
YAML Deployment Files	
Jenkins CI/CD	
GitHub Repo	
Monitoring Setup	
Screenshots Documented

 Screenshots & Proof
All screenshots of setup, builds, deployments, monitoring and running app are available here:

 Submission Folder (Mini Project 2)

 Live Application (via LoadBalancer)
You can access the deployed application using the Kubernetes LoadBalancer DNS/URL provided in your EKS service output.
