#!/bin/bash

# Exibe o diretório atual onde o commit será feito
echo ""
echo "📁 Commitando em: $(pwd)"
echo ""

# Solicita a mensagem do commit ao usuário
# A mensagem começará automaticamente com "Aula: "
read -p "Digite a mensagem: " mensagem_adicional

# Verifica se a mensagem adicional não está vazia
if [ -z "$mensagem_adicional" ]; then
    echo "❌ A mensagem do commit não pode estar vazia."
    exit 1
fi

# Constrói a mensagem completa do commit
mensagem_completa="Aula: $mensagem_adicional"

# Exibe a mensagem que será usada para o commit
echo ""
echo "🚀 Comitando com a mensagem: \"$mensagem_completa\""
echo ""

# Adiciona todos os arquivos modificados/novos ao stage
git add .

# Realiza o commit com a mensagem completa
# O '|| {' é para capturar erros do comando git commit
git commit -m "$mensagem_completa" || {
    echo "❌ Erro ao tentar commitar. Verifique se há validações ou hooks ativos."
    exit 1 # Sai do script com código de erro se o commit falhar
}

# Faz o push para o repositório remoto
# O '&&' garante que o push só será tentado se o commit for bem-sucedido
git push && echo "✅ Push feito com sucesso!" || {
    echo "❌ Erro ao tentar fazer o push. Verifique sua conexão ou permissões."
    exit 1 # Sai do script com código de erro se o push falhar
}

echo "" # Adiciona uma linha vazia no final para melhor legibilidade
