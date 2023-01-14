terraform {
  required_providers {
    google = "4.10.0"
  }

  backend "gcs" {
    bucket = ""
    prefix = "terraform/state"
  }
}

provider "google" {
  project = "aa-env-dev"
  region  = "us"
}

locals {
  firewall_rules = [{}]
  project_id     = "aa-env-dev"
  environment    = "dev"
}

module "firewall" {
  source = "../../modules/gcp/firewall-rule"
  for_each = {
    for index, rule in local.firewall_rules : rule.name => rule
  }

  project     = local.project_id
  environment = local.environment

  name              = each.value.name
  description       = each.value.description
  network_name      = each.value.network_name
  allowed_tcp_ports = each.value.allowed_tcp_ports
  source_tags       = each.value.source_tags
  source_ranges     = each.value.source_ranges
  target_tags       = each.value.target_tags
}