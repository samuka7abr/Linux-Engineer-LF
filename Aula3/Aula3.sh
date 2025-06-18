#!bin/bash

#manuais podem estar em sessões diferentes
man 1 ls # acessa a sessão 1 do manual de ls

apropos intro # mostra o que é cada sessão dos manuais de intro

#Entrada: teclado Saída: monitor
stderr 2
stdin 0
stdout 1

# o comando 1> escreve a saída de um comando dentro de um documento

date 1> documento.txt
# se repetir o mesmo comando, se o arquivo existir, ele sobrescreve o arquivo
#para que isso não aconteça e ele apenas adicione, use esse comando:
date 1>> documento.txt
> #direciona saída padrão 
# para direcionar arquivos na mesma saída padrão, rode o comando:>
2>&1
1> # serve para direcionar logs de sucesso
2> # direciona logs de erro

sort < arquivo.txt # ordena de forma alfabética

echo y > confirma # echo ecoa o que vc quiser que ele ecoe

set -o noclobber # não permite sobrescritas
set +o noclobber # permite sobrescritas

chattr +i arquivo.txt #garante imutabilidade a um arquivo (não deixa nem rm -rf remover) (só root pode executar)

cat -n arqivo.txt #enumera as linhas do arquivo
cat arquivo.txt | head -n 5 # passa a saída do cat como parametro para o segundo comando pós pipe


