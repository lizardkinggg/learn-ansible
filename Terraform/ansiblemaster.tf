provider "google" {
  credentials = "${file("/home/jim/Downloads/learn-gcp-267115-495f33af8ec2.json")}"
  project     = "learn-gcp-267115"
  region      = "us-central1"
  zone        = "us-central1-c"
}

resource "google_compute_instance" "ansible_client" {
  name         = "ansible-client"
  machine_type = "n1-standard-1"


  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1604-lts"
    }
  }

  network_interface {
    network = "default"

    access_config {

    }
  }
}
