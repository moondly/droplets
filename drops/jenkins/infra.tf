provider "lxd" {
  generate_client_certificates = true
  accept_remote_certificate    = true
}


resource "lxd_container" "jenkins01" {
  name      = "jenkins01"
  image     = "ubuntu:18.04"
  ephemeral = false
  profiles  = ["default"]
  limits = {
    cpu    = "2"
    memory = "3096MB"
  }

  config = {
    "user.access_interface" = "eth0"
  }

}