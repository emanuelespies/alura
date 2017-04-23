def da_boas_vindas
	# boas vindas 
	puts "Bem vindo ao jogo da adivinhação"
	puts "Qual é o seu nome?"

	# gets - pega a informação inserida pelo usuário
	nome = gets

	puts "-------------- \n"

	puts "Começaremos o jogo para você, #{nome}" 
	# puts "Começaremos o jogo para você, " + nome
end

da_boas_vindas

def sorteia_numero
	puts "Escolhendo um número secreto entre 0 e 200..."

	# The Random class itself acts as a random generator
	# http://stackoverflow.com/questions/198460/how-to-get-a-random-number-in-ruby
	numero_secreto = Random.rand(0...200)

	puts "Escolhido... que tal adivinhar hoje o nosso número secreto?"

	# quebra muitas linhas
	puts "\n \n \n \n"

	numero_secreto
end

def pede_numero tentativa, limite_de_tentativas
	puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
	puts "Entre com o número"
	chute = gets
	puts "Será que você acertou? Você chutou #{chute}"
	chute.to_i
end

def verifica_acerto numero_secreto, chute
	if (numero_secreto == chute) 
		puts "Você acertou!" 
		return true
	end
	
	puts "ERROU!"
	
	if (numero_secreto > chute) 
		puts "O Número secreto é maior!"
	else 
		puts "O Número secreto é menor!"
	end
	false
end

numero_secreto = sorteia_numero

#pede pro usuário tentar acertar
limite_de_tentativas = 3
for tentativas in 1..limite_de_tentativas
	chute = pede_numero tentativas, limite_de_tentativas
	
	if verifica_acerto numero_secreto, chute
		break
	end
end
