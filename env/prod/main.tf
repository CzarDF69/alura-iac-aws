module "aws-prod" {
  source     = "../../infra"
  instancia  = "t2.micro"
  regiao_aws = "us-east-2"
  ami        = "ami-024e6efaf93d85776"
  env        = "prod"
  chave      = "key-ec2-linux-ohio"
  repo       = "https://github.com/CzarDF69/alura-iac-aws"
}

output "IP" {
  value = module.aws-prod.IP_Publico
}
