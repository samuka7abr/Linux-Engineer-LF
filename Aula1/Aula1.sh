#!bin/bash

#esse comando muda automaticamente para o usuário ROOT
su - 
# assim como esses:
su - root
login root
su

#o comando abaixo lista os grupos e uuids dos usuários presentes no sistema
id
id root
id #qualquerOutroUser

#o comando abaixo lista os diretórios que formam a árvore até onde está
pwd

# o comando ls possui diversas flags para retornar parametros específicos
# listagem detalhada:
#colunas: dono (root ou analista), tamanho e data de criação/modificação
ls -l


