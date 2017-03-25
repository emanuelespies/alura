puts "Bem vindo ao jogo da adivinhação"
puts "Qual é o seu nome?"

# gets - pega a informação inserida pelo usuário
nome = gets

puts "-------------- \n"

puts "Começaremos o jogo para você, #{nome}" 
# puts "Começaremos o jogo para você, " + nome

puts "Escolhendo um número secreto entre 0 e 200..."

# The Random class itself acts as a random generator
# http://stackoverflow.com/questions/198460/how-to-get-a-random-number-in-ruby
$numero_secreto = Random.rand(0...200)


puts "Escolhido... que tal adivinhar hoje o nosso número secreto?"

puts "\n \n \n \n"

# pede pro usuário tentar acertar
def tentativas (num)
	puts "Tentativa #{num}"
	puts "Entre com o número"
	$chute = gets
	puts "Será que acertou? Você chutou #{$chute}"

	valida num
end

# valida se o numero esta certo. 
# permite ao usuário tentar 3x
def valida(num)
	if ($numero_secreto == $chute.to_i) 
		puts "Você acertou!" 
	else 
		puts "ERROU!"
		
		if ($numero_secreto > $chute.to_i) 
			puts "O Número secreto é maior!"
		else 
			puts "O Número secreto é menor!"
		end

		if (num < 3 )
			tentativas num+1
		end
	end
end

tentativas 1

# ou com for
# limite_de_tentativas = 3
# for tentativas in 1..limite_de_tentativas
# 	puts "Tentativa " + tentativas.to_s + " de " + limite_de_tentativas.to_s
# 	puts "Entre com o número"
# 	$chute = gets
# 	puts "Será que você acertou? Você chutou #{$hute}"
# 
# 	if ($numero_secreto == $chute.to_i) 
#		puts "Você acertou!" 
# 		break
#	else 
#		puts "ERROU!"
#		
#		if ($numero_secreto > $chute.to_i) 
#			puts "O Número secreto é maior!"
#		else 
#			puts "O Número secreto é menor!"
#		end
# 	end
# end
