kind create cluster --name mycluster

export KUBECONFIG="$(kind get kubeconfig-path --name="my-cluster")"

kubectl cluster-info

kubectl get nodes
