output "cluster_id" {
  value = module.doks.cluster_id
}

output "cluster_endpoint" {
  value = module.doks.cluster_endpoint
}

output "registry_endpoint" {
  value = module.registry.registry_endpoint
}

output "loadbalancer_ip" {
  value = module.loadbalancer.ip
}

output "kubeconfig" {
  value     = module.doks.kubeconfig
  sensitive = true
}
