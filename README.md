# Programa em Assembly MIPS - Consulta de Matrícula de Aluno
Projeto da disciplina Arquitetura de Sistemas Digitais da Universidade Federal de Campina Grande.

## Descrição

Este repositório contém um programa em Assembly MIPS que realiza uma consulta de matrícula de aluno com base no número de matrícula fornecido. O programa solicita ao usuário que insira um número de matrícula numérico de 9 dígitos. Em seguida, ele procura o número de matrícula fornecido na lista pré-definida de números de matrícula armazenados no próprio programa.

Se o número de matrícula fornecido corresponder a algum dos números pré-definidos, o programa exibe uma mensagem correspondente. Caso o número de matrícula fornecido seja composto apenas por zeros, o programa é encerrado. Se o número de matrícula fornecido não for encontrado na lista pré-definida, uma mensagem de "não encontrado" é exibida. Adicionalmente, se o número de matrícula fornecido corresponder ao número de matrícula utilizado para este programa, uma mensagem personalizada é exibida.

## Requisitos

- Simulador de Assembly MIPS: Este programa pode ser simulado usando software como MARS 4.5 ou QTSPIM.
- Entrada: O usuário deve fornecer um número de matrícula numérico de 9 dígitos.

## Lógica do Programa

1. Exibir a mensagem "Digite sua matrícula".
2. Receber um número de matrícula numérico de 9 dígitos como entrada.
3. Se o número de matrícula fornecido for composto apenas por zeros, encerrar o programa usando a chamada de sistema "exit".
4. Procurar o número de matrícula fornecido na lista pré-definida de números de matrícula armazenados no programa.
5. Exibir a mensagem correspondente com base nos resultados da busca:
   - Se encontrado, exibir "A matrícula XXXXXXXXX corresponde ao aluno YYYYYYYYY".
   - Se não encontrado, exibir "A matrícula XXXXXXXXX não foi encontrada".
   - Se o número de matrícula fornecido corresponder ao número de matrícula utilizado para este programa, exibir "Sou eu! Eu sou YYYYY YYYYY YYYYY, e tenho matrícula XXXXXXXXX".
6. Repetir o processo a partir do passo 1.

## Como Utilizar

Para executar o programa Assembly MIPS no MARS 4.5 ou QTSPIM, siga os seguintes passos:

1. Baixe e instale o MARS 4.5 ou QTSPIM (caso ainda não esteja instalado).
2. Carregue o programa Assembly fornecido no simulador.
3. Monte o programa.
4. Inicie a simulação.
5. Siga as instruções para inserir o número de matrícula e observe a saída do programa.
