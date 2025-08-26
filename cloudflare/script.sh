helm repo add cloudflare https://cloudflare.github.io/helm-charts
helm repo update
helm install cloudflare cloudflare/cloudflare-tunnel-remote -n cloudflared -f values.yaml --create-namespace
