# -*- coding: UTF-8 -*-

def cadastrar(nomes):
	print 'Digite o nome:'
	nome = raw_input()
	nomes.append(nome)

def remover(nomes):
	print 'Qual nome gostaria de remover?'
	nome = raw_input()
	nomes.remove(nome)

def listar(nomes):
	print 'Listando nomes:'
	for nome in nomes:
			print nome

def alterar(nomes):
	print 'Qual nome vc gostaria de alterar?'
	nome = raw_input()
	if (nome in nomes):
		print 'Qual será o novo nome?'
		novo_nome = raw_input()
		index = nomes.index(nome) 
		nomes[index] = novo_nome

def procurar(nomes):
	print 'Digite nome a procurar:'
	nome_a_procurar = raw_input()
	if (nome_a_procurar in nomes):
		print 'Nome encontrado'
	else :
		print 'Nome não encontrado'


def menu():
	nomes = []
	escolha = ''
	while(escolha != '0'):
		print 'Digite 1 para cadastrar, 3 para remover, 2 para listar, 4 para alterar ou 0 para terminar'
		escolha = raw_input()

		if (escolha == '1'):
			cadastrar(nomes)
		elif (escolha == '3'):
			remover(nomes)
		elif (escolha == '2'):
			listar(nomes)
		elif (escolha == '4'):
			alterar(nomes)
		elif (escolha == '5'):
			procurar(nomes)

menu()