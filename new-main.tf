// Configure the Google Cloud provider
provider "google" {
 credentials = file("stunning-lambda-297402-49f2662256a7.json")
 project     = var.gcp_project
 region      = var.region
}

//create vm
resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = var.my_inst_type
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = var.name
    access_config {
    }
  }

}

// Create VPC
resource "google_compute_network" "vpc" {
 name                    = var.name
 auto_create_subnetworks = "false"
}

// Create Subnet
resource "google_compute_subnetwork" "subnet" {
 name          = var.name
 ip_cidr_range = var.subnet_cidr
 network       = var.name
 region        = var.region
}
// VPC firewall configuration
resource "google_compute_firewall" "firewall" {
  name    = var.name
  network = google_compute_network.vpc.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_route" "routes" {
  name        = var.name
  dest_range  = "15.0.0.0/24"
  network     = google_compute_network.vpc.name
  next_hop_ip = "10.132.1.5"
  priority    = 100
}
