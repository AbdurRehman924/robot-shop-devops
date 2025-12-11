terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

resource "digitalocean_loadbalancer" "lb" {
  name   = var.lb_name
  region = var.region
  vpc_uuid = var.vpc_id

  forwarding_rule {
    entry_protocol  = "http"
    entry_port      = 80
    target_protocol = "http"
    target_port     = 80
  }

  healthcheck {
    protocol = "http"
    port     = 80
    path     = "/"
  }
}
