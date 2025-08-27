helm repo add teleport https://charts.releases.teleport.dev
helm repo update
helm install teleport teleport/teleport-cluster -f values.yaml --namespace teleport --replace
helm install teleport-agent teleport/teleport-kube-agent -f agent.yaml --version 18.1.6  --namespace teleport
