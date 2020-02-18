# MinIO Uploader

O `MinIO Uploader` é endpoint que permite o envio de arquivos para o [MinIO](https://min.io/) sem a necessidade de autenticação.

## Execução

Este projeto depende do [MinIO](https://min.io/), por isso é necessário subir uma instância dele no seu ambiente para que a aplicação funcione corretamente.

Para executar o projeto é necessário instalar algumas dependências, configurar algumas variáveis de ambiente e executar o servidor `Gunicorn`. Para isso, utilize os seguintes comandos:

### Dependências

```bash
apt update
apt install -y python3 python3-pip
pip3 install pipenv
pipenv --python 3 install --system --deploy
```

### Variáveis de ambiente

```bash
export S3_URL=http://MINIO_URL
export S3_ACCESS_KEY=MINIO_KEY
export S3_SECRET_KEY=MINIO_SECRET
```

**Ps:** Substitua as variáveis com os valores do seu ambiente.

### Servidor

Para executar a aplicação, utilize o comando:

```bash
gunicorn --bind 0.0.0.0:5000 wsgi:app
```

A aplicação subirá na porta `5000/TCP`.

Para testar o serviço, utilize o endereço: `http://URL:5000` e a mensagem `"Please, send a post request with file."` deverá ser exibida.

## Enviando arquivos

Para enviar arquivos para o [MinIO](https://min.io/) através do serviço, utilize o seguinte comando `curl`:

```bash
curl -X POST -F "file=@filename" http://URL/minio-upload/<bucket>/<filename>
```

**PS:** Substitua o `filename` pelo caminho absoluto do arquivo e o `<bucket>` pelo nome do Bucket criado no [MinIO](https://min.io/).
