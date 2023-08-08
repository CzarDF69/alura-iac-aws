module "aws-dev" {
    source = "../../infra"
    instancia = "t2.micro"
    regiao_aws = "us-east-2"
    chave = "id_rsa_dev"
}