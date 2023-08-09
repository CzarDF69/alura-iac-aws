module "aws-dev" {
  source     = "../../infra"
  instancia  = "t2.micro"
  regiao_aws = "us-east-2"
  ami        = "ami-02a89066c48741345"
  env        = "dev"
  repo       = "https://github.com/CzarDF69/alura-iac-aws"
}