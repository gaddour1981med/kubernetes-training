#Add Helm Repository for nfs-subdir-external-provisioner
helm repo add nfs-subdir-external-provisioner https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner
#Install Helm Chart for NFS
helm install nfs-subdir-external-provisioner \
nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
--set nfs.server=192.168.60.5 \
--set nfs.path=/data \
--set storageClass.onDelete=true
# Check pods and storage classes:
kubectl get pod
kubectl get sc