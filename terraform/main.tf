provider "google" {
  credentials = "./keys/my-creds.json"
  project     = "terraform-demo-503112"
  region      = "us-central1"
}

resource "google_storage_bucket" "demo-bucket" {
  name          = "terraform-demo-503112-terra-bucket"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}