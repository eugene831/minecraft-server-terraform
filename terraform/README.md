# Terraform configuration for Minecraft Bedrock Server (Docker)

## Usage

1. Install [Terraform](https://www.terraform.io/downloads.html) and [Docker](https://docs.docker.com/get-docker/).
2. Initialize Terraform in the `terraform` directory:

   ```sh
   cd terraform
   terraform init
   ```
3. Review the plan:

   ```sh
   terraform plan
   ```
4. Apply the configuration:

   ```sh
   terraform apply
   ```
5. The server will be available on UDP port 19132.

## Customization
- Edit `minecraft.tf` to change environment variables or port mappings.
- See [itzg/minecraft-bedrock-server](https://hub.docker.com/r/itzg/minecraft-bedrock-server) for more options.
