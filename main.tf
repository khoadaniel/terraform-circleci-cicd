variable "my_region" {
  type        = string
  description = "GCP location of my projecy."
}

variable "my_project" {
  type        = string
  description = "Name of my GCP project."
}

variable "google_credentials" {}

provider "google" {
  project     = var.my_project
  region      = var.my_region
  credentials = var.google_credentials
}



resource "google_storage_bucket" "my_bucket" {
  name          = "my-bucket-created-by-tf"
  location      = "var.my_region"
  force_destroy = true

  versioning {
    enabled = false
  }
}