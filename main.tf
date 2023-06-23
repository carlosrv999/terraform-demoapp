resource "google_compute_network" "default" {
  name                    = "vpc-${var.project_name}"
  auto_create_subnetworks = false
  mtu                     = 1460
}

resource "google_compute_subnetwork" "default_public" {
  name          = "subnet-${var.project_name}-public"
  ip_cidr_range = var.public_subnet_cidr
  region        = var.region
  network       = google_compute_network.default.id
}
