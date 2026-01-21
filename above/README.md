```powershell
# clean up the completed pod
kubectl delete pod pvc-debug -n above --ignore-not-found

# recreate a pod that stays running
@"
apiVersion: v1
kind: Pod
metadata:
  name: pvc-debug
  namespace: above
spec:
  restartPolicy: Never
  containers:
  - name: debug
    image: busybox
    command: ["sh","-c","sleep 36000"]
    volumeMounts:
    - name: pvc
      mountPath: /mnt
  volumes:
  - name: pvc
    persistentVolumeClaim:
      claimName: pg-table-backups
"@ | kubectl apply -f -

# wait until it's Running (optional but useful)
kubectl get pod pvc-debug -n above -w

# exec in
kubectl exec -it pvc-debug -n above -c debug -- sh
# inside:
# ls -lah /mnt
```
