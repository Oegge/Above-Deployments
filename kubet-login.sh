kubectl create secret docker-registry ghcr-cred \
  -n above-prod \
  --docker-server=ghcr.io \
  --docker-username=Oegge \
  --docker-password= \
  --docker-email=oeggge@gmail.com