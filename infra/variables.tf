variable "regiao_aws" {
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
    type = string
}