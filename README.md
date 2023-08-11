## Projeto final da sequência de cursos da Alura:
# Infraestrutura como Código:
# 1 - preparando máquinas na AWS com Ansible e Terraform
# 2 - separando ambientes na AWS com Ansible e Terraform

## Acesso ssh à maquina:
# ssh -i ~/.ssh/<chave.pem> ubuntu@ec2-18-219-241-194.us-east-2.compute.amazonaws.com

## Exemplo de execução do Ansible em produção:
# ansible-playbook env/prod/playbook.yml -i infra/hosts.yml -u ubuntu --private-key ~/.ssh/<chave.pem>

