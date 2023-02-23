# Aluna: Sabrina Araújo Cardoso - 118210114

.data
	matricula: .word 0x20111766, 0x19110394, 0x19110236, 0x19111026, 0x19110324, 0x20210674, 0x19110386, 0x18110269, 0x20110520, 0x20111601, 0x18210553, 0x19110420, 0x19111418, 0x19110904, 0x18110318, 0x18210651, 0x19110524, 0x19111014, 0x19110191, 0x19111664, 0x18210469, 0x19111299, 0x19110929, 0x19111150, 0x19210570, 0x19110421, 0x19110734, 0x18210809, 0x22111275, 0x18110402, 0x18210499, 0x22110406, 0x19110177, 0x20110415, 0x20111610, 0x20111401, 0x19110415, 0x19210861, 0x20111044, 0x21111310, 0x19110030, 0x20110266, 0x19111203, 0x17210743, 0x19110376, 0x19110390, 0x20210121, 0x19110779, 0x19110423, 0x18111101, 0x21110599, 0x19111090, 0x18210114, 0x19110785, 0x20110898, 0x20210436, 0x19110104, 0x20210601, 0x21111274, 0x19111128
	nomes: .asciiz "ADEILSON DE SOUSA LEAL                        \n","AIRON CIRILO GUENES FILHO                     \n","ALYSSON MACHADO DE OLIVEIRA BARBOSA           \n","ANDERSON MARCOS SILVA                         \n","ANDREY LUCYAN NASCIMENTO PAIVA                 ","BARBARA BEZERRA BARBOSA                       \n","BRUNO NASCIMENTO GOMES DE OLIVEIRA            \n","CAIO VASCONCELOS BENIGNO DE ABRANTES          \n","CLEISSON DE ALENCAR RAMOS                     \n","DAVI AUGUSTO MONTEIRO GONZAGA                 \n","DEBORA DA SILVA COSTA                         \n","DIEGO ALMEIDA DIAS                            \n","DOUGLAS BARROS CALISTA                        \n","EDGLEY DA SILVA CARVALHO FILHO                \n","EDUARDO LUIS FERREIRA BARBOSA                 \n","EUDES MEDEIROS                                \n","FABIO VICTOR GALDINO NASCIMENTO               \n","FELIPE ALEXANDRE DA SILVA BENTO               \n","FELIPE LUCENA SOUZA MEDEIROS                  \n","FERNANDO HENRIQUE DE SOUSA SILVA              \n","FILIPE JOSE FERREIRA DE ARAUJO                \n","FRANCINILDO BARBOSA FIGUEIREDO                \n","HEBERT SANTOS CRISPIM                         \n","HELSON JADER ROCHA                            \n","HIGOR COSTA DE OLIVEIRA                       \n","IGOR COSTA XAVIER                             \n","IURY CHAGAS DA SILVA CAETANO                  \n","JACKSON DA SILVA GUEDES                       \n","JANIELE PEREIRA BENICIO                       \n","JESSYCA DAYANE SOUSA BRANDAO                  \n","JOSE HELIO DE ARAUJO JUNIOR                   \n","JOSE TAYRONE SANTOS DE OLIVEIRA               \n","JULIA RAMALHO COSTA SOUZA                     \n","KAYO MATHEUS ARAUJO SANTOS                    \n","LAVNIS OLIVEIRA DE ARAUJO                     \n","LEIRY GABRIELLE MARQUES LUZ PINTO             \n","LEONARDO PESSOA BANDEIRA LACERDA              \n","LINDEMBERG COSTA LUNA                         \n","LUCAS ALLYSON HERMINIO SOUSA                  \n","LUCAS CARMO PASCHOAL                          \n","LUCAS DE OLIVEIRA LOBO                        \n","LUCAS HENRIQUE ANDRADE VILA NOVA              \n","MARCUS VINICIUS COSTA PEREIRA                 \n","MARIA THEREZA GOMES DO NASCIMENTO ROQUE       \n","MICAEL ESPINOLA FONSECA TOMAZ                 \n","MOISES DE ARAUJO OLIVEIRA                     \n","PEDRO HENRIQUE FERNANDES MACEDO               \n","PEDRO LIRA BANDEIRA                           \n","RAFAEL SA BENIGNO                             \n","RAFAELA TAVARES MARTINS                       \n","ROGERIO MOREIRA ALMEIDA                       \n","ROSMANYA MARLLA FIALHO DE LIMA FONSECA        \n","SABRINA ARAUJO CARDOSO                        \n","SAMARA LIMA CARDOSO                           \n","TULIO RAFAEL DE AGUIAR TAVARES                \n","UBIRAJARA POSSIANO DA SILVA FILHO             \n","VITOR TRINDADE ROCHA RIBEIRO                  \n","VITORIA JAMILLE GONCALVES DE OLIVEIRA NOBREGA \n","WALISSON MAXIMINO MESSIAS                     \n","WILLIAM HENRIQUE AZEVEDO MARTINS              \n"
	msgInitial: .asciiz "\nDigite sua matrícula: "
	msgFound: .asciiz "\nA matrícula 1"
	msgFound1: .asciiz " corresponde ao aluno "
	msgnotFound: .asciiz "\nA matrícula 1"
	msgnotFound1: .asciiz " não foi encontrada"
	msgitsMe: .asciiz "\nSou eu! Eu sou SABRINA ARAUJO CARDOSO, e tenho matrícula "
	
.text

init:
	li $v0, 4			# "printa" uma string
	la $a0, msgInitial		# Carrega em $a0 a string a ser "printada"
	syscall
	
	li $v0, 5		 	# Lê um valor inteiro
	syscall
	
	beq $v0, $zero, exit		# Se a matricula for zero, vai para "exit"
	
	beq $v0, 118210114, itsMe	# Se for minha matrícula, vai para "itsMe"
	
	move $t1, $v0 			# Move o valor de $v0 para $t1
	addi $t1, $t1, -100000000 	# Subtrai $t1 com 100 mil
	li $a2, -4			# Carrega -4 em $a2
	li $a3, -48			# Carrega -49 em $a3
	
preLoop:
	addi $a2, $a2, 4		# Soma $a2 com 4
	addi $a3, $a3, 48		# Soma $a3 com 49	
	li $a1, 10			# Carrega 10 em $a1
	li $s1, 1			# Carrega 1 em $a1
	lw $t2, matricula($a2)		# Carrega matricula($a2) em $t2	
	li $t3, 0			# Carrega 0 em $t3
	li $t4, 0			# Carrega 0 em $t4
	beq $a2, 240, Compare		# Se $a2=240, vai para "Compare"
	
Loop: 
	remu $t3, $t2, 0x10		# Pega o resto da divisão de $t2 por 0x10 e salva em $t3
	remu $t4, $t1, $a1 		# Pega o resto da divisão de $t1 por $a1 e salva em $t4
	divu $t5, $t4, $s1 		# Pega o resultado inteiro da divisão de $t4 por $s1
	bne $t3, $t5, preLoop		# Se $t3 for diferente de $t5, vai para "preLoop"
	
	mul $a1, $a1, 10 		# Multiplica $a1 por 10
	mul $s1, $s1, 10 		# Multiplica $s1 por 10
	srl $t2, $t2, 4 		# Desloca $t2 para a direita em 4 bits
	beq $t2, $zero, Compare		# Se $t2 for igual a zero, vai para "Compare"
	j Loop 				# Caso contrario, volta para "Loop"
	
Compare:
	beq $a2, 240, notFound		# Se $a2 for igual a 240 (nº matriculas * 4), vai para "notFound"
	j Found				# Caso contrario, vai para "Found"
	
Found:
	li $v0, 4			# "printa" uma string
	la $a0, msgFound		# Printa "msgFound"
	syscall
	
	li $v0, 1			# "printa" um inteiro
    	add $a0, $t1, $zero		# Printa a matricula inserida no inicio do programa
    	syscall
    	
    	li $v0, 4			# "printa" uma string
    	la $a0, msgFound1		# Printa "msgFound1"
    	syscall		
	
	li $v0, 4			# "printa" uma string
	la $a0, nomes($a3)		# Printa "nomes($a3)"
	syscall
	
	j init

notFound:
	li $v0, 4			# "printa" uma string
	la $a0, msgnotFound		# Printa "msgnotFound"
	syscall
	
	li $v0, 1			# "printa" um inteiro
    	add $a0, $t1, $zero		# Printa a matricula inserida no inicio do programa
    	syscall
    	
    	li $v0, 4			# "printa" uma string
	la $a0, msgnotFound1		# Printa "msgnotFound1"
	syscall
	
	j init
	
itsMe:
	li $v0, 4			# "printa" uma string
	la $a0, msgitsMe		# Printa "msgitsMe"
	syscall	
	
	li $v0, 1			# "printa" uma string
	addi $a0, $zero, 118210114	# Soma zero com minha matrícula e printa
	syscall
	
	j init
	
exit:	
	li $v0, 10			# Finaliza o programa
	syscall