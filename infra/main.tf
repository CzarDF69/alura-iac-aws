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
  key_name = "key-ec2-linux-ohio"

  tags = {
    Name = "ubuntu_terraform"
    Environment = var.env
    Provisioner = "Terraform"
    Repo = var.repo
  }

  vpc_security_group_ids = ["${aws_security_group.acesso_geral.id}"]
}

output "IP_Publico" {
  value = aws_instance.app_server.public_ip
}