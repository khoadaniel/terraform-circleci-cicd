variable "my_region" {
  type        = string
  description = "GCP location of my projecy."
}

variable "my_project" {
  type        = string
  description = "Name of my GCP project."
}

variable "credentials" {
  type        = string
  description = "Name of my GCP project."
}




provider "google" {
  project = var.my_project
  region  = var.my_region
  #credentials = file("not-pushed/service-account-key.json")
  credentials = var.credentials
}



resource "google_storage_bucket" "my_bucket" {
  name          = "my-first-bucket-created-by-tf-and-circleci"
  location      = var.my_region
  force_destroy = true

  versioning {
    enabled = false
  }
}
