
#!bin/bash

#esse comando pode ter uma visualização "agradável" do ls
ls -lh #(mostra de uma forma mais legível os tamanhos dos arquivos)

#esse comando exibe arquivos ocultos
ls -la

#ao digitar ls -la
#o código que tem na primeira coluna das infos
#representa o tipo do arquivo
#se tem D no primeiro caractere, é um diretório
#se tem L no primeiro, é um link simbólico
#arquivos comuns começam com "-"

#dentro de um diretório, tem duas pastas padrão
#..
#.
#.. serve para voltar para o diretório anterior
#. serve para representar o seu diretório atual

#comando mandb serve para importar manuais globais 
#dos comandos do linux
mandb

man ls #esse abre os manuais do comando ls (dá pra fazer isso)
#com todos os comandos nativos do linux
#
#
: <<DIR
os diretórios do linux citados na aula (e suas funções) são:
tmp : arquivos temporários
etc : arquivos de configrações

DIR

mkdir #esse comando cria diretórios
ls -ld nomeDiretorio #verifica as propiedades de um repo 
mkdir -v nomeDir #ecoa uma mensagem que confirma a criação do diretório
mkdir -p nomeDir #cria filhos de diretórios (pasta dentro de pasta)
#para criar arquivos ocultos, coloque um '.' antes do arquivo

rmdir #remove diretórios vazios
rm -r #remove diretórios cheios de modo recursivo
rm -rf #força a remoção de arquivos que não permitem exclusão direta

#cópia de diretórios:
cp -rp /dir1/ /dir2/   #-p garante a integridade de dono do arquivo

history #mostra os últimos comandos dados pelo user logado


#impressão de variáveis:
echo $HISTSIZE #essa mostra o tamanho da lista de histórico de comandos (history)

!x # repete o comando da linha x do history

which comando #mostra a pasta onde estão armazenados os comandos














