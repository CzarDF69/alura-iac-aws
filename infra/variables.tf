variable "regiao_aws" {
    description = "Region to be used"
    type = string
}

variable "env" {
    description = "Environment execution"
    type = string
}

variable "ami" {
    description = "AWS AMI to be used"
    type = string
}

variable "instancia" {
    type = string
}

variable "repo" {
    description = "Repositorio no GitHub"
    type = string
}

variable "chave" {
    description = "Chave de acesso a AWS"
    type = string
}