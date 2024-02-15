# DevOps-Intern-Role
The expressapp folder conatins the simple hello world express application and the Docker file for containerizing the application and is accessible on DockerHub using the url https://hub.docker.com/repository/docker/chimenco/express-app/general


The kube-config folder the saved kind-kubeconfig file which basically contains information about the cluster.

The script folder contains the bash script used to deploy the kind cluster, as well scripts to install kind and script to save the kubeconfig file

The terraform folder the following;
deployment.yaml: the kubernetes deployment manifest to deploy the Node.js (deployment component)

service.yaml: the kubernetes deployment manifest to deploy the Node.js (service component)

main.tf: terraform file to deploy the kubectl manifest to the kind cluster
