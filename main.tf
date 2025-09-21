terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = ">= 3.6.2"
    }
  }
}

provider "docker" {
  host     = lookup(var.provider_docker_config, "host", null)
  ssh_opts = lookup(var.provider_docker_config, "ssh_opts", null)
}
