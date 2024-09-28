# Install latest metrics-server in the kube-system namespace
$ kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
# Patch command to add --kubelet-insecure-tls otherwise we’ll see an error saying something like unable to fetch metrics from node docker-desktop.
$ kubectl patch deployment metrics-server -n kube-system --type 'json' -p '[{"op": "add", "path": "/spec/template/spec/containers/0/args/-", "value": "--kubelet-insecure-tls"}]'