variable "provider_docker_config" {
  default = {
    host = "ssh://user@remote-host:22"
    ssh_opts = [
      "-i", "~/.ssh/id_rsa",
      "-o", "StrictHostKeyChecking=no",
      "-o", "UserKnownHostsFile=/dev/null"
    ]
  }
}

variable "container_minecraft_env" {
  default = [
    "EULA=TRUE",
    "GAMEMODE=survival",
    "DIFFICULTY=normal",
  ]
}
