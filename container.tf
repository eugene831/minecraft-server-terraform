resource "docker_container" "minecraft" {
  name  = "minecraft"
  image = docker_image.minecraft.image_id
  ports {
    internal = 19132
    external = 19132
    protocol = "udp"
  }
  env     = var.container_minecraft_env
  restart = "unless-stopped"

  mounts {
    target = "/data"
    source = docker_volume.minecraft.name
    type   = "volume"
  }
}
