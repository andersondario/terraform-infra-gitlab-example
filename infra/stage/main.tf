terraform {
  required_providers {
    google = "4.10.0"
  }

  backend "gcs" {
    bucket = "ad-terraform-live-state-stage"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = "aa-env-stage"
  region  = "us"
}

locals {
  project_id  = "aa-env-stage"
  environment = "stage"
}