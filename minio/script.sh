helm repo add minio https://charts.min.io/
helm repo update
helm install minio minio/minio --namespace minio --set rootUser=admin,rootPassword=password --create-namespace -f values.yaml
