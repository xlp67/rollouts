k3d cluster create prod --agents 2 --volume /Users/xlp67/devops/volume:/storage
k taint node k3d-prod-server-0 key1=value1:NoSchedule
helmfile apply -l name=argocd
helmfile apply -l name=argocd-rollouts
kaf ~/Developer/monitoring/config/kube-state-metrics
kaf ~/Developer/monitoring/config/prometheus
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
kaf application.yaml
k port-forward svc/argocd-server -n argocd 8080:80
