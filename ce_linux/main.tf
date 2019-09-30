resource "google_compute_instance" "default" {
  project      = "august-cascade-215413"
  name         = "helloworld-gcp"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1904"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}
