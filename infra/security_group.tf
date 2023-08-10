resource "aws_security_group" "acesso_geral" {
    name = "acesso_geral"
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
      Name = "acesso_geral"
      Origem = "Terraform"
    }
}