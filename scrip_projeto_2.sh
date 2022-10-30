#!/bin/bash

echo "Atualizando servidor" 


apt-get update

apt-get upgrade -y

echo "Instalando apache2"

apt-get install apache2

echo "Instalando unzip"

apt-get install unzip

echo "Baixando e copiando arquivos da app"
cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
echo "copiando"
cp * /var/www/html/ -R -f


echo "Finalizado com sucesso!!"
