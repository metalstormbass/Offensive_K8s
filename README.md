# Offensive_K8s

The purpose of this project is to have a customized version of Kali that can run in Docker. 

## Docker
You can run the container locally, by either building it from the Docker file or pulling from my Docker Hub.

```
docker run -p <PORT>:<PORT> michaelbraunbass/offensivek8:latest
```

## Kubernetes
By default, it will listen on ports ```8181```, ```1337```, ```40000```, ```3002```, ```9988```. You can modify the file as required. The deployment will also create a a load balancer.

```
kubectl apply -f kali_deployment.yaml
```