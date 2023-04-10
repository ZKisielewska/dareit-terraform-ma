terraform {
  required_version = ">= 1.0.11"
  backend "gcs" {
    bucket = "terraform-state-file-ma"
    prefix = "dev"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.58.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "4.58.0"
    }
  }
}