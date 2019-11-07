provider "lxd" {
  generate_client_certificates = true
  accept_remote_certificate    = true
}


resource "lxd_container" "swarm01" {
  name      = "swarm01"
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

resource "lxd_container" "swarm02" {
  name      = "swarm02"
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

resource "lxd_container" "swarm03" {
  name      = "swarm03"
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

resource "lxd_container" "swarm04" {
  name      = "swarm04"
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

resource "lxd_container" "swarm05" {
  name      = "swarm05"
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