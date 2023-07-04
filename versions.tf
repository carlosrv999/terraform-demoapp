terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.70.0"
    }
  }
  backend "gcs" {
    bucket = "terraform-state-demoapp-crnmh487r429so"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = var.project_id
}
