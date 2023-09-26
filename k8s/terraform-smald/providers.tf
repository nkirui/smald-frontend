#-----------------------------------------
# Default provider: Kubernetes
#-----------------------------------------


terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.0"
    }
  }
}
provider "kubernetes"  {
  #Context to choose from the config file.
  config_path    = "/home/nathan/.kube/config"
  config_context = "kubernetes-admin@smald-infra"
}