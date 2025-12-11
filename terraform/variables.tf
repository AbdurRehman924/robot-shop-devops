variable "do_token" {
  description = "DigitalOcean API token"
  type        = string
  sensitive   = true
}

variable "cluster_name" {
  description = "DOKS cluster name"
  type        = string
  default     = "robot-shop-cluster"
}

variable "region" {
  description = "DigitalOcean region"
  type        = string
  default     = "nyc1"
}

variable "registry_name" {
  description = "Container registry name"
  type        = string
  default     = "robot-shop-registry"
}

variable "lb_name" {
  description = "Load balancer name"
  type        = string
  default     = "robot-shop-lb"
}
