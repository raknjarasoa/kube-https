Token
kubectl -n kubernetes-dashboard get secret $(kubectl -n kubernetes-dashboard get sa/admin-user -o jsonpath="{.secrets[0].name}") -o go-template="{{.data.token | base64decode}}"

Dashboard:
http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/



kubectl create secret tls aks-ingress-tls \
    --namespace default \
    --key rak-tls.key \            
    --cert rak-tls.crt 