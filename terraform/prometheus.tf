provider "helm" {
  kubernetes {
    config_path    = "~/.kube/config"  # Path to my Kubernetes config file
  }
}

resource "helm_release" "kube_prometheus_stack" {
  name       = "kube-prometheus-stack"
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "kube-prometheus-stack"
  version    = "9.4.4" 

  # Set values for the Helm chart (if needed)
  values = [
    file("values.yaml")  
  ]

  namespace = "monitoring" 
}
