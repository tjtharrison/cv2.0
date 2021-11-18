provider "aws" { 
    region = "eu-west-1"
    shared_credentials_file = "~/.aws/credentials"
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