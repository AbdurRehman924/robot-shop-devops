variable "lb_name" {
  description = "Name of the load balancer"
  type        = string
}

variable "region" {
  description = "DigitalOcean region"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for the load balancer"
  type        = string
}
