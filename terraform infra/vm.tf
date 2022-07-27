resource "google_compute_instance" "default" {
  name         = "managment-vm"
  machine_type = var.vm_type
  zone         = "${var.managment_subnet_region}-a"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    subnetwork = module.network.managment_subnet_id
  }



}


resource "google_compute_instance" "test" {
  name         = "test-vm"
  machine_type = var.vm_type
  zone         = "${var.restricted_subnet_region}-a"

  tags = [ "restricted"]
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    subnetwork = module.network.restricted_subnet_id
  }


}
