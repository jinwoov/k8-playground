```sh
kubectl label namespace default istio-injection=enabled --overwrite

kubectl label namespace sonarqube istio-injection=enabled --overwrite

kubectl label namespace splunk istio-injection=enabled --overwrite

kubectl label namespace jenkins istio-injection=enabled --overwrite


helm repo add bitnami https://charts.bitnami.com/bitnami
helm search repo bitnami
helm install my-release bitnami/<chart>


## increase docker desktop k8 memory
wsl -d docker-desktop
sysctl -w vm.max_map_count=262144
https://www.elastic.co/guide/en/elasticsearch/reference/current/vm-max-map-count.html
```