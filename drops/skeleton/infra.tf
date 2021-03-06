provider "lxd" {
  generate_client_certificates = true
  accept_remote_certificate    = true
}


resource "lxd_container" "template01" {
  name      = "template01"
  image     = "ubuntu:18.04"
  ephemeral = false
  profiles  = ["default"]
  limits = {
    cpu    = "1"
    memory = "256MB"
  }

  config = {
    "user.access_interface" = "eth0"
  }

}