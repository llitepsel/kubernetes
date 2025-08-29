kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.15.2/config/manifests/metallb-native.yaml
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
helm install ingress-nginx ingress-nginx/ingress-nginx \
  --namespace ingress-nginx --create-namespace \
  --set controller.service.type=LoadBalancer
#data:
#  proxy-real-ip-cidr: 0.0.0.0/0
#  real-ip-header: CF-Connecting-IP
#  use-forwarded-headers: "true"
helm install nginx-secondary ingress-nginx/ingress-nginx   --namespace nginx-secondary   --create-namespace   --set controller.ingressClassResource.name=nginx-secondary   --set controller.ingressClass=nginx-secondary   --set controller.ingressClassResource.controllerValue="k8s.io/nginx-secondary"   --set controller.replicaCount=1   --set controller.name=nginx-secondary   --set controller.service.externalTrafficPolicy=Local
