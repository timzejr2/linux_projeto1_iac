#!/bin/bash

echo "Criar diretórios!"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criar grupos de usuários!"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criar usuários do grupo adm!"
useradd carlos -m -c "Carlos Eduardo" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -c "Maria Ana" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
USERADD joao -m -c "Joao Pedro" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

echo "Criar usuarios do grupo ven!"
useradd debora -m -c "Debora Falabela" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana Silva" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -c "Roberto Carlos" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

echo "Criar usuarios do grupo sec!"
useradd josefina -m -c "Josefina Santos" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -c "Amanda Castro" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -c "Rogerio Souza" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especializar permissões dos diretórios!"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado!"
