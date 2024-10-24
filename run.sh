## Apply env variables and secrets
kubectl delete configmap nginx-config
kubectl create configmap nginx-config --from-file=udagram-reverseproxy/nginx.conf
kubectl apply -f aws-secret.yaml
kubectl apply -f env-secret.yaml
kubectl apply -f env-configmap.yaml
## Deployments - Double check the Dockerhub image name and version in the deployment files
kubectl apply -f udagram-api-feed/backend-feed-deployment.yaml
kubectl apply -f udagram-api-user/backend-user-deployment.yaml
kubectl apply -f udagram-frontend/frontend-deployment.yaml
kubectl apply -f udagram-reverseproxy/reverseproxy-deployment.yaml
## Do the same for other three deployment files
## Service
kubectl apply -f udagram-api-feed/backend-feed-service.yaml
kubectl apply -f udagram-api-user/backend-user-service.yaml
kubectl apply -f udagram-frontend/frontend-service.yaml
kubectl apply -f udagram-reverseproxy/reverseproxy-service.yaml
## Do the same for other three service files

# kubectl expose deployment reverseproxy --type=LoadBalancer --name=publicreverseproxy
# kubectl expose deployment frontend --type=LoadBalancer --name=publicfrontend
# docker build -t minhsama2000/udagram-frontend:v6 .
# docker push minhsama2000/udagram-frontend:v6
# kubectl set image deployment frontend frontend=minhsama2000/udagram-frontend:v6