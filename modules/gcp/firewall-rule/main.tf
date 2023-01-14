resource "google_compute_firewall" "rule" {
  project     = var.project
  name        = "${var.name}-${var.environment}"
  network     = var.network_name
  description = var.description

  allow {
    protocol = var.protocol
    ports    = var.allowed_tcp_ports
  }

  source_tags = var.source_tags
  target_tags = var.target_tags

  source_ranges = var.source_ranges
}