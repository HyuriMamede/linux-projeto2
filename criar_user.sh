#!/bin/bash

echo "Criando users do sistema..."

useradd guest -m  -c "usuario convidado" -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd guest -e

useradd joao  -m -c "usuario convidado" -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd joao -e

useradd teste -m -c "usuario convidado" -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd teste -e

useradd testes -m -c "usuario convidado" -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd testes -e


echo "Finalizado!"
