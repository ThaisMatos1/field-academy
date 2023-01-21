#!/bin/bash

echo ==============================================================================
echo ------------------------------- FIELD ACADEMY --------------------------------
echo ==============================================================================

echo "Vamos criar uma pasta FIELD-ACADEMY na sua HOME:"

RESP="N"

while [ $RESP == "N" -o $RESP == "n" ]
do
 echo "°O caminho" ~ " está correto (S/N)?"
	read RESP
done


pash=~/FIELD-ACADEMY
if [ ! -d $pash ]; then
  echo "Criando novo diretorio...";
  mkdir $pash;
if [ "$?" -eq "0" ];then
  echo
  echo "DIRETÓRIO CRIADO COM SUCESSO"
else
  echo "*** ERRO AO CRIAR DIRETÓRIO ***"
fi
else
  echo "*** DIRETÓRIO JA EXISTE ***"
fi

echo "=============================================================================="
echo 
echo "Foi criado um novo arquivo helloworld.js com a seguinte mensagem: "
echo "Hello world"
echo "console.log('Hello World)" > $pash/helloworld.js
