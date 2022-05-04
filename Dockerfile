# imagem do python q será usada
FROM python:3.8

#o diretorio de onde o app estará na imagem
WORKDIR /usr/src/app_django_docker

# instala o pip
RUN pip install --upgrade pip

#copia os requirements para o diretorio do app
COPY ./requirements.txt /usr/src/app_django_docker/

# instala os requirements
RUN pip install -r requirements.txt

# copia toda a aplicação
COPY . /usr/src/app_django_docker/

# expoe a aplicação na porta 8000
EXPOSE 8000

# roda o comando na imagem para iniciar a aplicação
COPY ./entrypoint.sh /
ENTRYPOINT ["sh", "/entrypoint.sh"]

