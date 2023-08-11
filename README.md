# Projeto - Infraestrutura como Código (Alura):
### 1 - Preparando máquinas na AWS com Ansible e Terraform
### 2 - Separando ambientes na AWS com Ansible e Terraform
Compilado final do estudo dos dois primeiros cursos de Infraestrutura como código da Alura, usando Terraform, Ansible e AWS.

## Configuração das chaves de acesso na AWS:
Obs: Devido a mudança na política de segurança da AWS, eu não consegui acessar, via ssh, a máquina EC2 criada seguindo as instruções do curso, portanto eu segui a documentação da AWS e procedi da forma a seguir.
#### 1. Na AWS eu criei uma chave .pem para minha região e salvei em ~/.ssh, alterando a permissão para somente leitura (chmod 400 chave.pem);
#### 2. Depois criei um grupo e um usuário com acesso full ao EC2 (AmazonEC2FullAccess e EC2InstanceConnect);
#### 3. Para esse usuário, em Credenciais de Segurança, também gerei uma "Chave de acesso 1";
#### 4. Em minha máquina de desenvolvimento (Ubuntu), instalei o AWS-CLI;
#### 5. Depois executei "aws configure" e informei os dados da "Chave de acesso 1" e da região que eu uso.
Com isso feito, os comandos ssh e Ansible tornaram-se mais simples, mas ainda seguros.

## Exemplo de comando ssh para acesso à maquina EC2:
#### ssh -i ~/.ssh/<chave.pem> ubuntu@ec2-18-219-241-194.us-east-2.compute.amazonaws.com

## Exemplo de execução do Ansible em produção:
#### ansible-playbook env/prod/playbook.yml -i infra/hosts.yml -u ubuntu --private-key ~/.ssh/<chave.pem>

#### Espero ter ajudado.