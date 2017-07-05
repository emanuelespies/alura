def da_boas_vindas
	# boas vindas 
	puts "Bem vindo ao jogo da adivinhação"
	puts "Qual é o seu nome?"

	# gets - pega a informação inserida pelo usuário
	#.strip remove o enter na hora do gets
	nome = gets.strip

	puts "-------------- \n"

	puts "Começaremos o jogo para você, #{nome}" 
end

da_boas_vindas

def sorteia_numero
	puts "Escolhendo um número secreto entre 0 e 200..."

	# The Random class itself acts as a random generator
	# http://stackoverflow.com/questions/198460/how-to-get-a-random-number-in-ruby
	numero_secreto = Random.rand(0...200)
	#numero_secreto = rand(200)

	puts "Escolhido... que tal adivinhar hoje o nosso número secreto?"

	# quebra muitas linhas
	puts "\n \n \n \n"

	numero_secreto
end

def pede_numero chutes, tentativa, limite_de_tentativas
	puts "Tentativa #{tentativa} de #{limite_de_tentativas}"
	puts "Chutes até agora: " + chutes.to_s 
	puts "Entre com o número"
	chute = gets.strip
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
pontos_ate_agora = 1000

#pede pro usuário tentar acertar
limite_de_tentativas = 3
chutes = []

for tentativas in 1..limite_de_tentativas
	chute = pede_numero chutes, tentativas, limite_de_tentativas

	pontos_a_perder = (chute - numero_secreto).abs / 2.0

	# if ao contrario
	#unless pontos_a_perder > 0 
	#	pontos_a_perder *= -1
	#end

	pontos_ate_agora -= pontos_a_perder
	
	# coloca um elemento dentro do array
	chutes << chute

	if verifica_acerto numero_secreto, chute
		break
	end
end

puts "Você ganhou #{pontos_ate_agora} pontos."