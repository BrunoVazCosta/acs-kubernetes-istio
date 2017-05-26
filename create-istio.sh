# Download and install last release of istio
curl -L https://git.io/getIstio | sh -

# Change dir to istio install dir
cd isio-*

# Add istioctl to PATH
export PATH=$PWD/bin:$PATH

# RBAC part doesn't work

# Install Istio without enabling Istio Auth feature
kubectl apply -f install/kubernetes/istio.yaml

# To collect and view metrics provided by Mixer, install Prometheus, as well as the Grafana and/or ServiceGraph addons
kubectl apply -f install/kubernetes/addons/prometheus.yaml
kubectl apply -f install/kubernetes/addons/grafana.yaml
kubectl apply -f install/kubernetes/addons/servicegraph.yaml

# To enable and view distributed request tracing, install the Zipkin addon
kubectl apply -f install/kubernetes/addons/zipkin.yaml

# Verifying the installation
kubectl get svc
kubectl get pods
