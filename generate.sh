#!/bin/bash

SRC_DIRLIST="@types config modules shared"
MODULES_DIRLIST="dtos infra providers repositories services"

echo "---------------------------------------------------------------------"
echo "Gere estrutura de diretórios para o seu projeto no padrão DDD"
echo "---------------------------------------------------------------------"
echo

echo "Qual tipo de estrutura você deseja gerar?"
echo

echo "[1] - Gerar a estrutura completa do diretório src (❗️início do projeto)"
echo "ℹ️  Essa opção vai gerar a pasta src e suas subpastas: @types config modules shared"

echo

echo "[2] - Gerar a estrutura completa do diretório src/modules"
echo "ℹ️  Essa opção vai gerar a pasta com o nome do módulo e suas subpastas: dtos infra providers repositories services"

echo

echo -n "Digite a opção: "
read OPTION

echo

case $OPTION in
  1) 
    echo "Criando a pasta src e suas subpastas..."
    echo `mkdir src && cd ./src/ && mkdir $SRC_DIRLIST`
    echo "Estrutura gerada 😄"
    ;;
  2)
    echo -n "O nome do módulo que será gerado: "
    read NAME_MODULE

    echo "Criando a pasta $NAME_MODULE dentro de modules e suas subpastas..."
    echo `cd ./src/modules/ && mkdir $NAME_MODULE && cd ./$NAME_MODULE && mkdir $MODULES_DIRLIST`
    echo "Estrutura gerada 😄"
    ;;
esac
