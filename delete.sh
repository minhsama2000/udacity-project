kubectl delete deployment reverseproxy
kubectl delete deployment frontend
kubectl delete deployment backend-user
kubectl delete deployment backend-feed

kubectl delete service backend-feed
kubectl delete service backend-user
kubectl delete service frontend
kubectl delete service reverseproxy
kubectl delete service publicfrontend
kubectl delete service publicreverseproxy
