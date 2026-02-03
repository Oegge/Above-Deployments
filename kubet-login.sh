kubectl create secret docker-registry ghcr-cred \
  -n encounters \
  --docker-server=ghcr.io \
  --docker-username=Oegge \
  --docker-password= \
  --docker-email=oeggge@gmail.com