# -*- coding: UTF-8 -*-


raw_input()

int(string) -> para converter

import re importa regex

Terminal
	>>> resultado = re.match('Py', 'Python')
	>>> resultado
	<_sre.SRE_Match object at 0x104b86ac0>
	>>> resultado.group()
	'Py'
	>>> resultado = re.match('[A-Za-z]y', 'Python') # maiusculo e minusculo
	>>> resultado.group()
	>>> resultados = re.findall('[A-Za-z]y', 'Python ou jython')
	>>> resultados
	['Py', 'jy']
	>>> 

r = raw string
	Para definir uma raw string devemos prefixar a string com a letra r, por exemplo "r'[A-Z]+'"

Caso queiramos buscar qualquer caracter, inclusive considerando números, podemos para isso podemos usar [A-Za-z0-9] como faixa. Porém, por ser uma necessidade tão comum, podemos utilizar o atalho '\w'. Reescrevendo a expressão:

	>>> resultados = re.findall('(\wy\w+)','Python ou jython ou PyPy')
	>>> resultados
	['Python', 'jython', 'PyPy']


Novamente, o '\w' também incorpora números. Não acredita? Vamos alterar nossa string:

	>>> resultados = re.findall('(\wy\w+)','Python3 ou jython2 ou PyPy')
	>>> resultados
	['Python3', 'jython2', 'PyPy']

Existem outros atalhos como o '\d' que identifica apenas números ou '\s' para whitespaces como espaço ou tabulação. No exemplo a seguir, procuraremos por qualquer palavra que contenha um y como segunda letra, mas agora com um número no final:

	>>> resultados = re.findall('(\wy\w+\d)','Python3 ou jython2 ou PyPy')
	>>> resultados
	['Python3','jython2']

Por exemplo, a expressão '[A-Za-z]+\d?' pega qualquer palavra comas letra de A-Z independente de minuscula ou maiúscula contendo opcionalmente um número:

	>>> resultados = re.findall('[A-Za-z]+\d?','Python3 ou jython ou PyPy44')
	>>> resultados
	['Python3', 'ou', 'jython', 'ou', 'PyPy4']

	>>> resultados = re.findall('([fF]\w+)','Nico Flavio Fabiana Romulo')
	>>> resultados
	['Flavio', 'Fabiana']

Busca no início da string
	>>> resultado = re.match(r'^#','#comentarios começam com tralha')
	>>> resultado is None
	False

Analogamente podemos usar o caracter $ para buscar pelo final da string. Para saber se uma string termina com br podemos usar a expressão: r'.br$' Repare o $ no final da expressão. br deve estar no final ($) e antes do br podem vir quaisquer caracteres, zero ou mais vezes (`.`):

	>>> resultado = re.match(r'.*br$','http://alura.com.br')
	>>> resultado.group()
	'http://alura.com.br'