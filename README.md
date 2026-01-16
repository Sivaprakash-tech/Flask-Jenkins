
### Flask Application – CI/CD with Jenkins, Docker & Kubernetes

---

###  Tech Stack

* **Flask** – Python web framework
* **Jenkins** – CI/CD automation
* **Docker** – Containerization
* **Kubernetes** – Application orchestration
* **Docker Hub** – Container registry

---

### Repo Structure

```
flask-Jenkins/
├── app.py
├── requirements.txt
├── Dockerfile
├── Jenkinsfile
└── k8s/
    ├── deployment.yaml
    └── service.yaml
```

### Jenkins Flow

1. Code is pushed to GitHub
2. Jenkins pulls the code using a Jenkins pipeline
3. Jenkins builds a Docker image for the Flask app
4. The image is pushed to Docker Hub
5. Jenkins deploys the application to Kubernetes using `kubectl`
6. The app is exposed using a Kubernetes Service

---

###  Docker

The application is containerized using a Dockerfile that:

* Uses a Python base image
* Installs dependencies from `requirements.txt`
* Runs the Flask application on port `5000`

---

###  Kubernetes

* A **Deployment** is used to run the Flask app with multiple replicas
* A **NodePort Service** exposes the application outside the cluster

---
