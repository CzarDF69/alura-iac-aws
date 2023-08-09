terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region = var.regiao_aws
}

resource "aws_instance" "app_server" {
  ami = var.ami
  instance_type = var.instancia

  tags = {
    Environment = var.env
    Provisioner = "Terraform"
    Repo = var.repo
  }
}
