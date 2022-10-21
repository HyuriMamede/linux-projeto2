#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados!"
echo "  "
echo "Criando grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos criados"
echo "   "

echo "Criando usuários...."
echo "Adicionando nos seus devidos grupos..."

useradd carlos -c "Carlos" -m -s /bin/bash -G GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -G GRP_ADM
useradd joao -c "Joao" -m -s /bin/bash -G GRP_ADM
useradd debora -c "Debs" -m -s /bin/bash -G GRP_VEN
useradd sebastian -c "Sebastian" -m -s /bin/bash -G GRP_VEN
useradd roberto -c "roberto" -m -s /bin/bash -G GRP_VEN
useradd josefina -c "FIna" -m -s /bin/bash -G GRP_SEC
useradd amanda -c "Mands" -m -s /bin/bash -G GRP_SEC
useradd rogerio -c "Roger" -m -s /bin/bash -G GRP_SEC
echo "Criação concluida"
echo "usuarios adicionados aos grupos corretamente"

echo "Especificando permissoes"

chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
echo "Concluído com sucesso"


 
