def cadastrar(nomes):
	print 'Digite o nome:'
	nome = raw_input()
	nomes.append(nome)

def remover(nomes):
	print 'Qual nome você gostaria de remover?'
	nome = raw_input()
	nomes.remove(nome)

nomes = []