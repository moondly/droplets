provider "lxd" {
  generate_client_certificates = true
  accept_remote_certificate    = true
}


resource "lxd_container" "dockerRegistry01" {
  name      = "dockerRegistry01"
  image     = "ubuntu:18.04"
  ephemeral = false
  profiles  = ["default"]
  limits = {
    cpu    = "2"
    memory = "1024MB"
  }

  config = {
    "user.access_interface" = "eth0"
  }

}