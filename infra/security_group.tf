resource "aws_security_group" "grupo_acesso" {
    name = "grupo_acesso"
    description = "Grupo de Seguranca Terraform"

    ingress {
      cidr_blocks = [ "0.0.0.0/0", ]
      ipv6_cidr_blocks = [ "::/0", ]
      from_port = 0
      to_port = 0
      protocol = -1
      prefix_list_ids = []
      security_groups = []
      self = false
    }

    egress {
      cidr_blocks = [ "0.0.0.0/0", ]
      ipv6_cidr_blocks = [ "::/0", ]
      from_port = 0
      to_port = 0
      protocol = -1
      prefix_list_ids = []
      security_groups = []
      self = false
    }

    tags = {
      Name = "grupo_acesso"
      Origem = "Terraform"
    }
}