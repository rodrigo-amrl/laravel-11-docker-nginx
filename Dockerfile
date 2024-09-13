# imagem do servidor nginx com a ultima versão do php
FROM wyveo/nginx-php-fpm:latest
#copia o projeto para a pasta html do nginx
COPY . /usr/share/nginx/html
# copia o arquivo de configuração do nginx para a pasta de instalação do nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf
# define o diretório de execução do projeto, no servidor nginx fica na pasta html 
WORKDIR /usr/share/nginx/html
# cria um link simbolico para executar a pasta public do laravel
RUN ln -s public html
# atualiza os pacotes
RUN apt update; \
# instala do editor vim para acessar o container
apt install vim -y 
# define a porta de execução
EXPOSE 80







