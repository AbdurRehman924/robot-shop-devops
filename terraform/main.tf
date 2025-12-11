terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

module "doks" {
  source = "./modules/doks"
  
  cluster_name = var.cluster_name
  region       = var.region
}

module "registry" {
  source = "./modules/registry"
  
  registry_name = var.registry_name
}

module "loadbalancer" {
  source = "./modules/loadbalancer"
  
  lb_name = var.lb_name
  region  = var.region
  vpc_id  = module.doks.vpc_id
}
