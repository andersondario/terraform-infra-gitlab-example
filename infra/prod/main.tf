terraform {
  required_providers {
    google = "4.10.0"
  }

  backend "gcs" {
    bucket = "ad-terraform-live-state-prod"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = "aa-env-prod"
  region  = "us"
}

locals {
  project_id  = "aa-env-prod"
  environment = "prod"
}