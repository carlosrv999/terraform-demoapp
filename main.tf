resource "google_compute_network" "default" {
  name                    = "vpc-${var.app_name}-${var.env_name}"
  auto_create_subnetworks = false
  mtu                     = 1460
  project                 = var.project_id
}

resource "google_compute_subnetwork" "default_public" {
  name          = "subnet-${var.app_name}-${var.env_name}-public"
  ip_cidr_range = var.public_subnet_cidr
  region        = var.region
  network       = google_compute_network.default.id
  project       = var.project_id
}
