terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
    local = {
      source = "hashicorp/local"
    }
  }
}

resource "digitalocean_kubernetes_cluster" "cluster" {
  name    = var.cluster_name
  region  = var.region
  version = "1.34.1-do.1"

  node_pool {
    name       = "worker-pool"
    size       = "s-2vcpu-2gb"
    node_count = 2
  }
}

resource "local_file" "kubeconfig" {
  content  = digitalocean_kubernetes_cluster.cluster.kube_config[0].raw_config
  filename = "${path.root}/kubeconfig"
}
