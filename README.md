# CI/CD Automation

This repository contains the solution for **Task 1** of the DevOps Internship — automating code deployment using GitHub Actions and Docker Hub.

---

## 📌 Objective

The goal was to set up a **CI/CD pipeline** using **GitHub Actions** that automatically builds a Docker image of a Node.js web application and deploys it to Docker Hub on every push to the `main` branch.

---

## 🧩 Tech Stack

- Node.js
- Docker
- GitHub Actions
- Docker Hub

---

## 🛠️ Project Structure

```bash
.
├── app.js
├── Dockerfile
├── package.json
├── README.md
└── .github
    └── workflows
        └── main.yml


# Task 5: Deploying a Node.js Application on Kubernetes with Minikube

This project demonstrates the deployment of a containerized Node.js web application to a local Kubernetes cluster. The objective was to learn and apply fundamental Kubernetes concepts, including pods, deployments, and services. This task was completed as part of the **Elevate Labs DevOps Internship Program**.

## 🚀 Project Goal

The primary goal was to take an existing Node.js application, containerize it using Docker, and deploy it onto a single-node Kubernetes cluster running locally via Minikube. The project covers the entire workflow from application code to a scalable, running service accessible from the local machine.

## 🛠️ Tools and Technologies

* **Kubernetes:** The container orchestration platform used to manage the application.
* **Minikube:** A tool for running a single-node Kubernetes cluster locally.
* **kubectl:** The command-line tool used to interact with the Kubernetes cluster.
* **Docker:** The containerization platform used to build the application image.
* **Node.js:** The runtime environment of the sample application.
* **Git & GitHub:** For version control and code management.

## 📝 Steps to Reproduce

Here are the steps taken to complete the deployment:

1.  **Cluster Setup:** A local Kubernetes cluster was initiated using the `minikube start` command.

2.  **Containerization:** A `Dockerfile` was written to create a container image of the Node.js application. The image was built directly within Minikube's Docker environment using `eval $(minikube docker-env)` to avoid the need for a remote container registry.

3.  **Kubernetes Deployment:** A `deployment.yaml` file was created to define the desired state for the application. This file instructs Kubernetes to create and manage pods running the application's container image.

4.  **Exposing the Application:** A `service.yaml` file was created to expose the application to network traffic. The `NodePort` service type was used to make the application accessible from the local machine.

5.  **Deployment & Verification:** The YAML files were applied using `kubectl apply`. The status of the pods and services was verified with `kubectl get pods` and `kubectl get services`.

6.  **Scaling:** The application was scaled from 2 to 4 replicas using the `kubectl scale` command to demonstrate the load-handling capabilities of Kubernetes.

## ✅ Project Outcome & Screenshots

The application was successfully deployed and made accessible via a URL provided by Minikube. The deployment was successfully scaled, and all pods were verified to be in a `Running` state.

### Initial Deployment (2 Replicas)
*(Your screenshot of `kubectl get pods` and `kubectl get services` here)*

### Scaled Deployment (4 Replicas)
*(Your screenshot showing 4 running pods here)*

### Application Accessibility
*(Optional: A screenshot of the running web application in your browser)*

## 🧠 Key Concepts Demonstrated

* **Pods:** The smallest deployable units in Kubernetes, running instances of our container.
* **Deployments:** Managing the application's lifecycle, including creating replica pods and handling updates.
* **Services:** Providing a stable network endpoint (`NodePort`) to access the running application.
* **Containerization:** Packaging an application and its dependencies into a portable Docker image.
* **Declarative Configuration:** Using YAML files to define the desired state of the system.

---

