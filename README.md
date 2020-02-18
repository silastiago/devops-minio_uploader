#Travis

[![Build Status](https://travis-ci.org/silastiago/devops-minio_uploader.svg?branch=master)](https://travis-ci.org/silastiago/devops-minio_uploader)

# Execução


Para executar o projeto você deve ter um servidor com o ansible instalado.
O comando para executar a playbook segue logo abaixo:

# ansible-playbook  -i inventory playbook.yml --ssh-common-args='-o StrictHostKeyChecking=no'


Para alterar o servidor você deve ir no arquivo inventory e alterar o ip, usuario e senha que irá se autenticar no servidor.


