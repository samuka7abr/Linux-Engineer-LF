#!bin/bash

#split: divide um arquivo em pedaços
split 

#split -d muda o sufixo das partições em numérico
#-b diz o tamanho 
#-l divide em linhas
#--verbose confirma o sucesso 
# split -d -b 20M --verbose arquivo.img /opt/arq

#para juntar os arquivos, use esse comando:
cat arq0* > novoImg.img

#esse comando aponta as diferenças entre dois arquivos
#a flag -s é um verbose que diz se são iguais, caso sejam
diff arq1 arq2
# --- Resumo dos Comandos `cut` e `awk` em Shell Script ---

# O comando `cut` é usado para extrair seções específicas de linhas de arquivos
# ou da entrada padrão. Ele "corta" pedaços de texto baseados em delimitadores,
# campos ou posições de caracteres. É ideal para extrações simples e diretas.

# --- Opções Principais do `cut` ---
# -d 'delimitador': Especifica o caractere que separa os campos.
#                   Ex: -d ',' para vírgula como delimitador.
# -f N:             Extrai o(s) campo(s) especificado(s) pelo número N.
#                   Pode ser um único campo (-f 2), múltiplos (-f 1,3) ou um intervalo (-f 2-4).
# -c N:             Extrai o(s) caractere(s) especificado(s) pela posição N.
#                   Similar ao -f, mas conta caracteres (-c 1-5).

# --- Exemplos de Uso do `cut` ---

# 1. Extrair o segundo campo de um arquivo CSV (vírgula como delimitador):
#    Exemplo de conteúdo de 'meu_arquivo.csv':
#    Nome,Idade,Cidade
#    Alice,30,São Paulo
#    Bruno,25,Rio de Janeiro
# cut -d ',' -f 2 meu_arquivo.csv
# Saída esperada:
# Idade
# 30
# 25

# 2. Extrair os três primeiros caracteres de cada linha:
# echo "Linux é demais" | cut -c 1-3
# Saída esperada:
# Lin

# 3. Extrair nome de usuário (campo 1) e shell (campo 7) de /etc/passwd (delimitador :):
# cut -d ':' -f 1,7 /etc/passwd
# Saída esperada:
# root:/bin/bash
# daemon:/usr/sbin/nologin
# ...


# O comando `awk` é uma linguagem de programação completa para processamento de texto
# e manipulação de dados. Ele lê a entrada linha por linha, divide cada linha em campos
# (por padrão, separados por espaços ou tabulações) e executa ações baseadas em padrões.
# É muito mais flexível e poderoso que o `cut`.

# --- Conceitos Chave do `awk` ---
# - Sintaxe: pattern { action }
# - Campos: $1 (primeiro campo), $2 (segundo), $0 (linha inteira), $NF (último campo).
# - Variáveis Especiais:
#   - NR: Número da linha atual.
#   - NF: Número total de campos na linha atual.
#   - FS: Field Separator (separador de campo de entrada, padrão é espaço/tab).
#   - OFS: Output Field Separator (separador de campo de saída, padrão é espaço).
# - Blocos BEGIN e END:
#   - BEGIN { ... }: Executado uma vez, ANTES de processar qualquer linha.
#   - END { ... }:   Executado uma vez, DEPOIS de processar todas as linhas.

# --- Exemplos de Uso do `awk` ---

# 1. Imprimir o primeiro e o terceiro campo de cada linha (padrão é espaço como delimitador):
# echo "Nome Idade Cidade" | awk '{print $1, $3}'
# Saída esperada:
# Nome Cidade

# 2. Somar a segunda coluna de um arquivo:
#    Exemplo de conteúdo de 'dados.txt':
#    ItemA 10
#    ItemB 20
#    ItemC 15
# awk '{soma += $2} END {print "Total:", soma}' dados.txt
# Saída esperada:
# Total: 45

# 3. Filtrar linhas que contêm a palavra "erro" e imprimir a linha inteira:
#    Exemplo de conteúdo de 'log.txt':
#    Info: Tudo ok
#    Erro: Falha no sistema
#    Aviso: Verifique algo
# awk '/erro/ {print $0}' log.txt
# Saída esperada:
# Erro: Falha no sistema

# 4. Usar um delimitador personalizado (exemplo: ':' como em /etc/passwd) e imprimir o nome de usuário (primeiro campo):
# awk -F ':' '{print $1}' /etc/passwd
# Saída esperada:
# root
# daemon
# ...

# 5. Imprimir um cabeçalho, os nomes dos usuários e um rodapé usando BEGIN e END:
# awk -F ':' 'BEGIN {print "--- Usuários do Sistema ---"} {print $1} END {print "--- Fim da Lista ---"}' /etc/passwd
# Saída esperada:
# --- Usuários do Sistema ---
# root
# daemon
# ...
# --- Fim da Lista ---
