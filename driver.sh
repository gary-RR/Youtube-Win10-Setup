#Get cluster info
kubectl cluster-info

#View nodes (one in our case)
kubectl get nodes

#Schedule a Kubernetes deployment using a container from Google samples
kubectl create deployment hello-world --image=gcr.io/google-samples/hello-app:1.0

#View all Kubernetes deployments
kubectl get deployments

#Get pod info
kubectl get pods -o wide

#Create a Kubernetes service to expose our service
kubectl expose deployment hello-world --port=8080 --target-port=8080 --type=NodePort

#Get all deployments in teh current name space
kubectl get services -o wide

#Test the service
curl   http://localhost:NodePort -UseBasicParsing

#Shell to the pod
kubectl exec -it POD_NAME -- sh

#Scale up the replica set to 2
kubectl scale --replicas=2 deployment/hello-world

#Check number of pods
kubectl get pods -o wide

#Clean up
kubectl delete deployment hello-world
kubectl delete service hello-world
