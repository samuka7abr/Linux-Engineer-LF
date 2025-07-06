#!bin/bash


lshw #traz todas as informações do seu hardware
hwinfo #faz a mesma coisa, mas o display de informações é diferente

fdisk /dev/disco_desejado
#abre o menu para fazer a partição do disco
#(para mais detalhes, apertar m)

mount <partição> <local> #faz o vinculo do dispositivo ao diretorio

