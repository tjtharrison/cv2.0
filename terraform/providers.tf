provider "aws" {
  # Auth achieved by environment variables
  region = "eu-west-1"
}

terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}