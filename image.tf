data "docker_registry_image" "minecraft" {
  name = "itzg/minecraft-bedrock-server:latest"
}

resource "docker_image" "minecraft" {
  name          = data.docker_registry_image.minecraft.name
  pull_triggers = [data.docker_registry_image.minecraft.sha256_digest]
}
