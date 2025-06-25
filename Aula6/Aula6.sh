#!bin/bash

# --- editores de texto --- 

sed
# sed é um editor de texto que funciona através de linha de comando (não abre uma interface igual ao vim)

vim
# existe vi e vim (vi é o editor de texto que originou o vim, gvim, neovim (esse surgiu a partir do vim))
: << 'COMMENT'

---- comandos de vim ----
i - começa a inserção a partir da linha que seu "cursor" está
o - começa uma linha abaixo da linha em que seu cursor está
dd - apaga uma linha (como cntrl + x no VSCODE) (também recorta) (dá pra passar um número antes pra cortar/deletar N linhas abaixo da atual)
:q! - força a saída do documento sem contar as últimas alterações
:num_da_linha - pula pra linha desejada
num_linhasY - copia N linhas abaixo de onde seu cursor está (incluindo a linha do cursor) (para comentar apenas a linha que está, o comando é: Y)
p - cola as linhas copiadas
u - é o cntrl + z do vim (desfaz a última ação)
cntrl + r - refaz
/palavra - faz pesquisa da palavra que vem depois da barra
:set nonu - remove a numeração das linhas 
:set relativenumber - números relativos (set + tab mostra todas as opções)
# set digitado dentro do vim funciona apenas naquela sessão de escrita
# o arquivo .vimrc é o config global do vim
COMMENT