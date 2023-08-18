# Projeto - Infraestrutura como Código:
### Curso 1 - Preparando máquinas na AWS com Ansible e Terraform
### Curso 2 - Separando ambientes na AWS com Ansible e Terraform
Compilado final do estudo dos dois primeiros cursos de Infraestrutura como código da Alura, com AWS, Ansible e Terraform.


## Configuração das chaves de acesso na AWS:
Eu não acessei a instância EC2 exatamente como descrito no curso, preferi fazer isso de outra forma, que também se encontra na documentação da AWS. Essa maneira está listada a seguir e foi feita a partir um emulador de terminal Tilix Ubuntu, instalado em um micro com Windows 11.

#### 1. Salvei na pasta ~/.ssh um arquivo .pem, pertencente a um par de chaves que criei na AWS para a região que uso, alterando a permissão para somente leitura;
#### 2. Em "Credenciais de Segurança", criei um grupo e um usuário com acesso full a instâncias EC2 (AmazonEC2FullAccess e EC2InstanceConnect);
#### 3. Para esse usuário eu criei uma "Chave de acesso 1", depois cadastrei o arquivo .pem, do item 1, como "Chave pública SSH para o AWS CodeCommit";
#### 4. Em meu terminal Ubuntu, instalei o AWS-CLI para configurar a autenticação de usuário, usando o comando "aws configure", para definir variáveis de ambiente com os valores da "Chave de acesso 1", além de informar a região que eu uso.
Com isso feito, os comandos ssh e Ansible tornaram-se mais simples, mas ainda seguros.

## Exemplo de comando ssh para acesso à maquina EC2:
#### ssh -i ~/.ssh/<arquivo.pem> ubuntu@ec2-18-219-241-194.us-east-2.compute.amazonaws.com

## Exemplo de execução do Ansible em produção:
#### ansible-playbook env/prod/playbook.yml -i infra/hosts.yml -u ubuntu --private-key ~/.ssh/<arquivo.pem>

### Com a descrição deste README e os arquivos do projeto, espero ajudar desenvolvedores em busca de respostas.