terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.99.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.5.3"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.1.0"
    }
    ssh = {
      source  = "loafoe/ssh"
      version = "2.7.0"
    }
    rancher2 = {
      source  = "rancher/rancher2"
      version = "7.0.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.7.2"
    }
  }
  required_version = ">= 1.0.0"
}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.aws_region
}

provider "rancher2" {
  api_url = var.rancher_api_url
  access_key = var.rancher_access_key
  secret_key = var.rancher_secret_key
}
