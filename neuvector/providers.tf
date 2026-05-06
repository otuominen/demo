terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.43.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.8.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.2.1"
    }
    ssh = {
      source  = "loafoe/ssh"
      version = "2.7.0"
    }
    rancher2 = {
      source  = "rancher/rancher2"
      version = "14.1.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.8.1"
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
