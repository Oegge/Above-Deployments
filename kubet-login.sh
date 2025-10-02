kubectl create secret docker-registry ghcr-cred \
  -n above \
  --docker-server=ghcr.io \
  --docker-username=Oegge \
  --docker-email=oeggge@gmail.com