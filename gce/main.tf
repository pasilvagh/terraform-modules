resource "google_compute_instance" "server" {
  count = var.server_count
  name = "${var.server_name}_${count.index}-${var.environment}"
  machine_type = var.machine_type
  zone = var.zone
 
  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    subnetwork = var.subnetwork_id
    access_config {
    }
  }
}