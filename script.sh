#!/bin/bash

groupdel -m /etc/group/*
userdel -r /etc/passwd/*

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd -m carlos -G GRP_ADM
useradd -m maria -G GRP_ADM
useradd -m joao -G GRP_ADM

useradd -m debora -G GRP_VEN
useradd -m sebastiana -G GRP_VEN
useradd -m roberto -G GRP_VEN

useradd -m josefina -G GRP_SEC
useradd -m amanda -G GRP_SEC
useradd -m rogerio -G GRP_SEC

chown root:GRP_ADM /adm
chmod 770 /adm

chown root:GRP_VEN /ven
chmod 770 /ven

chown root:GRP_SEC /sec
chmod 770 /sec
