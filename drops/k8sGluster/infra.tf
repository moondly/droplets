provider "lxd" {
  generate_client_certificates = true
  accept_remote_certificate    = true
}


resource "lxd_container" "k8s01" {
  name      = "k8s01"
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

resource "lxd_container" "k8s02" {
  name      = "k8s02"
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
resource "lxd_container" "k8s03" {
  name      = "k8s03"
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