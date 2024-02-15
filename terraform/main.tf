provider "kubectl" {
  config_path = "/home/ubuntu/kube-config/kind-kubeconfig"  # Path to my kubeconfig file
}

resource "kubectl_manifest" "nodejs_deployment" {
  yaml_body = file("${path.module}/deployment.yaml")
}

resource "kubectl_manifest" "nodejs_service" {
  yaml_body = file("${path.module}/service.yaml")
}
