resource "google_compute_network" "network" {
  name                    = "network-${var.environment}"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnetwork" {
  name          = "subnetwork-${var.environment}"
  ip_cidr_range = var.subnetwork_range
  region        = var.region
  network       = google_compute_network.network.id
}

# resource "google_vpc_access_connector" "vpc_access_connector" {
#   name           = "vpc_access_connector-${var.environment}"
#   ip_cidr_range  = "10.2.0.0/28"
#   network        = google_compute_network.network.name
#   region         = var.region
#   max_throughput = 300
# }
