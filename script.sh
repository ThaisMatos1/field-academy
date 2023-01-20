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



if [ ! -d ~/FIELD-ACADEMY ]; then
  echo "Criando novo diretorio...";
  mkdir ~/FIELD-ACADEMY;
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
echo "Foi criado um novo arquivo helloword.js com a seguinte mensagem: "
echo 
echo "console.log('Hello World')" > ~/FIELD-ACADEMY/helloWord.js
node ~/FIELD-ACADEMY/helloWord.js
