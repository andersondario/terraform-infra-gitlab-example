terraform {
  required_providers {
    google = "4.10.0"
  }

  backend "gcs" {
    bucket = "ad-terraform-live-state-dev"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = "aa-env-dev"
  region  = "us"
}

locals {
  project_id  = "aa-env-dev"
  environment = "dev"
}