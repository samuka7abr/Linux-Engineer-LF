#!bin/bash

# --- Comandos da Família Grep ---

# grep: Procura padrões em arquivos.
# Sintaxe: grep [opções] padrão [arquivo...]

# Uso básico: Procurar por "erro" em /var/log/syslog
grep "erro" /var/log/syslog

# -i: Ignorar maiúsculas/minúsculas
grep -i "aviso" /var/log/messages

# -v: Inverter a correspondência (mostrar linhas que *não* correspondem)
grep -v "informação" /var/log/auth.log

# -n: Mostrar números de linha
grep -n "falha" /var/log/kern.log

# -r: Pesquisa recursiva em diretórios
grep -r "importante" /etc/

# -l: Listar arquivos que contêm o padrão
grep -l "função" /home/usuario/scripts/*

# egrep: grep estendido, suporta expressões regulares estendidas (ERE).
# Geralmente, 'grep -E' é preferível em vez de 'egrep'.

# Exemplo com ERE: Corresponder "maçã" ou "laranja"
grep -E "maçã|laranja" frutas.txt
# ou
egrep "maçã|laranja" frutas.txt

# Começa com: Usar '^'
grep -E "^início" arquivo.txt
# Termina com: Usar '$'
grep -E "fim$" arquivo.txt

# Intervalos (quantificadores): Corresponder "a" seguido por 2 a 4 "b"s
grep -E "ab{2,4}" padrao.txt

# fgrep: grep fixo, procura por strings literais (sem expressões regulares).
# Geralmente, 'grep -F' é preferível em vez de 'fgrep'.
# Mais rápido para buscas de strings literais.

# Buscar pela string literal "minha.variavel"
grep -F "minha.variavel" configuracao.ini
# ou
fgrep "minha.variavel" configuracao.ini

# --- Comandos de Localização de Arquivos ---

# locate: Encontra arquivos por nome usando um banco de dados pré-construído (atualizado por 'updatedb').
# Mais rápido que 'find', mas pode não mostrar as alterações mais recentes até que 'updatedb' seja executado.

# Encontrar todos os arquivos chamados "meurelatorio.pdf"
locate meurelatorio.pdf

# Encontrar arquivos que contêm "config" em seu nome
locate config

# --- Caracteres Curinga (Globbing) ---

# *: Corresponde a qualquer sequência de zero ou mais caracteres.
# Listar todos os arquivos .txt
ls *.txt

# ???: Corresponde a qualquer caractere único.
# Listar arquivos como 'arquivo1', 'arquivo2', 'arquivo3' (mas não 'arquivo10')
ls arquivo???

# [abc]: Corresponde a um único caractere do conjunto.
# Listar arquivos que começam com 'a', 'b' ou 'c'
ls [abc]*

# [!abc]: Corresponde a um único caractere que NÃO está no conjunto.
# Listar arquivos que não começam com 'a', 'b' ou 'c'
ls [!abc]*

# {}: Expansão de chaves, gera strings arbitrárias.
# Criar arquivos: relatorio_jan.txt, relatorio_fev.txt, relatorio_mar.txt
touch relatorio_{jan,fev,mar}.txt

# Listar arquivos com extensão .jpg ou .png
ls *.{jpg,png}

# --- Comandos de Gerenciamento de Disco ---

# dd: Converter e copiar um arquivo. Frequentemente usado para criar pendrives inicializáveis ou fazer backup de partições de disco.
# Sintaxe: dd if=<arquivo_entrada> of=<arquivo_saida> [opções]

# Criar um arquivo de 1GB chamado 'meu_arquivo_grande.img'
dd if=/dev/zero of=meu_arquivo_grande.img bs=1M count=1024

# Criar um pendrive inicializável a partir de uma imagem ISO (CUIDADO, isso sobrescreve o destino!)
# dd if=ubuntu.iso of=/dev/sdX bs=4M status=progress # Substitua /dev/sdX pelo seu pendrive

# fdisk: Manipular tabelas de partição de disco. (Requer privilégios de root)
# Usado para criar, deletar e modificar partições de disco.

# Listar tabelas de partição (geralmente '/dev/sda' ou '/dev/nvme0n1')
sudo fdisk -l

# Entrar no modo interativo do fdisk para um disco específico
# sudo fdisk /dev/sdX # Substitua /dev/sdX pelo seu disco

# lsblk: Listar dispositivos de bloco (discos e suas partições).
# Fornece uma visão em árvore dos dispositivos de armazenamento.

# Listar todos os dispositivos de bloco
lsblk

# Listar dispositivos de bloco com tamanhos em formato legível para humanos
lsblk -h

# Listar dispositivos de bloco incluindo informações do sistema de arquivos
lsblk -f

# Listar dispositivos de bloco com topologia completa
lsblk -t
