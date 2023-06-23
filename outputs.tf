output "vpc_id" {
  value = google_compute_network.default.id
}

output "vpc_name" {
  value = google_compute_network.default.name
}

output "public_subnetwork_id" {
  value = google_compute_subnetwork.default_public.id
}

output "public_subnetwork_name" {
  value = google_compute_subnetwork.default_public.name
}
