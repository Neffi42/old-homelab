terraform {
  required_version = "~> 1.15.1"

  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "3.1.0"
    }
    pihole = {
      source  = "ryanwholey/pihole"
      version = "2.0.0-beta.1"
    }
    ovh = {
      source  = "ovh/ovh"
      version = "2.13.1"
    }
  }
}

provider "kubernetes" {
  config_path = var.kube_config_path
}

provider "pihole" {
  url      = var.pihole_url
  password = var.pihole_password
}

provider "ovh" {
  endpoint           = var.ovh_endpoint
  application_key    = var.ovh_application_key
  application_secret = var.ovh_application_secret
  consumer_key       = var.ovh_consumer_key
}
