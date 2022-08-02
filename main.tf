provider "google" {
  project     = "KuntalGCPProject"
  region  = "us-central1"
  zone    = "us-central1-a"
}

data "google_compute_disk" "demo" {
    name = "demo"
    project = "KuntalGCPProject"
}

output "demo" {
    value = data.google_compute_disk.demo
}