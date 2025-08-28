```bash
helm template demo musicManager > test.yaml
```

```bash
minikube start --cpus=6 --memory=8g --driver=docker
```

```bash
./kubet-login.sh
```

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


```bash
helm install music musicManager
```


```bash
helm upgrade music musicManager
```

```bash
minikube addons enable ingress
```

```bash
minikube tunnel
```

```bash
kubectl patch svc ingress-nginx-controller -n ingress-nginx --type merge --patch-file=lb-patch.yaml

```

```bash
 helm install music musicManager  
 ```

```bash
 helm uninstall music
 ```

```bash
minikube tunnel --bind-address 0.0.0.0
 ```



```bash
minikube stop
```



```bash
minikube delete --all --purge
```


