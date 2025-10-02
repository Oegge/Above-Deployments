```bash
helm template demo musicManager > test.yaml
```

```bash
minikube start --cpus=6 --memory=8g --driver=docker
```

```bash
./kubet-login.sh
```

# make the ingress controller available under windows

```bash
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
```

```bash
helm upgrade --install ingress-nginx ingress-nginx/ingress-nginx  --namespace ingress-nginx  --create-namespace -f ./ingress-values.yaml
```

```bash
 kubectl -n ingress-nginx port-forward svc/ingress-nginx-controller 8080:80
 ```

# install the music manager

```bash
helm install music musicManager -n music --create-namespace
```

```bash
helm upgrade music musicManager
```
# uninstall the music manager from the cluster
```bash
 helm uninstall music -n music
 ```

# stopping the cluster

```bash
minikube stop
```

# nuke the cluster to start from scratch only use during local development

```bash
minikube delete --all --purge
```


