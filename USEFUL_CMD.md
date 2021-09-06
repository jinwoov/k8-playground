```sh
kubectl label namespace default istio-injection=enabled --overwrite

kubectl label namespace sonarqube istio-injection=enabled --overwrite

helm repo add bitnami https://charts.bitnami.com/bitnami
helm search repo bitnami
helm install my-release bitnami/<chart>


```