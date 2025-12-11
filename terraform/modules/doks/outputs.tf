output "cluster_id" {
  value = digitalocean_kubernetes_cluster.cluster.id
}

output "cluster_endpoint" {
  value = digitalocean_kubernetes_cluster.cluster.endpoint
}

output "vpc_id" {
  value = digitalocean_kubernetes_cluster.cluster.vpc_uuid
}

output "kubeconfig" {
  value = digitalocean_kubernetes_cluster.cluster.kube_config[0].raw_config
}
