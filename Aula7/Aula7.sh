#!bin/bash

script output.txt #captura no arquivo "output.txt" tudo o que for feito a partir dali no terminal (comandos e respostas)
exit #para o script


script -a output.txt #captura no mesmo arquivo já criado (sem criar um novo)


lsblk #retorna seus dispositivos de bloco (dispositivos de armazenamento)

MBR & GPT # São modelos estruturais de partição 
#dizem ao computador onde as partições começam e terminam em um disco, e qual delas pode ser usada para iniciar o sistema operacional.

#MBR permite até 4 partições e aguenta até 2TB de armazen
#se vc usar um disco de 4TB, apenas 2 serão usados
#mas, se precisar de mais, existe a possibilidade
#de criar uma partição extendida e dividi-la em partições
#lógicas
#EX:
# [ sda1 | sda2 | sda3 | [ sda5 | sda6 ]sda4(ext) ]
# neste diagrama, sd{1..3} são partições primárias.
# sd4 é a partição extendida (container)
# sd{5..6} são partições lógicas dentro do container
# ou seja, existem 5 partições utilizaveis: sd{1..3} e sd{5..6}

#Agora, por outro lado, o GPT permite 128 partições e não 
#possui limite de tamanho (9.4ZB)
#a nomenclatura das partições é igual a MBR sda{1..128}


lsblk -l # retorna suas partições de disco e o modelo estrutural de partição

df -h ou duf #retornam quanto de armazenamento vc tem disponivel na maquina

mount | grep sda #retorna a lista de partições (limitando apenas ao sda, mas existem várias)

ncdu # mostra a pasta que mais consome no seu diretório

dlkid #identifica os dispositivos
lscpu #mostra as informações da sua CPU
