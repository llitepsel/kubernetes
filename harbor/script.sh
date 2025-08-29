helm repo add harbor https://helm.goharbor.io
helm repo update
helm install harbor harbor/harbor -f values.yaml -n harbor --create-namespace
