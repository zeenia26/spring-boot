# Spring CRUD Example - Simple Project Management App

A Java full stack application with all the CRUD operations on a MySQL database using VueJS as the Front end Framework and Spring Boot as the Back end REST API.


## Used technologies:
- Spring Boot
- Spring MVC
- Spring Data JPA
- Hibernate
- MySQL
- Thymeleaf
- Jenkins
- Minikube
- Dockerfile
- Bitnami Helm charts for MySQL
- Git Bash
- Kubernetes

## Steps to Containerize a web application and deploy it on Kubernetes:
1. Setup a Jenkins CI pipeline to build the docker image:
  * Install the plugins in Jenkins:
    1. Docker-pipeline
    2. Docker
    3. Pipeline utility
  * Write the pipeline script and Build the job.
2. Create the Kubernetes cluster on minikub:
   -        _minikube start --driver=docker_
3. Deploy the bitnami/mysql helm chart
  * Add the bitnami helm repo:
    -       _helm repo add bitnami_
  * Deploy the mysql chart from bitnami helm charts
    -        _helm install <release_name> bitnami/mysql_
4. Deploy the Spring boot application
   -        _kubectl create deployment spring-boot-k8s --image=zeenia/spring-app:latest --port=8085_
