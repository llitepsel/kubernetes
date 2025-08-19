helm repo add vm https://victoriametrics.github.io/helm-charts/
helm install vmoperator vm/victoria-metrics-operator -n monitoring --create-namespace
helm install vmagent vm/victoria-metrics-agent -f vmagent-values.yaml -n monitoring
