def da_boas_vindas
	# boas vindas 
	puts "Bem vindo ao jogo da adivinhação"
	puts "Qual é o seu nome?"

	# gets - pega a informação inserida pelo usuário
	#.strip remove o enter na hora do gets
	nome = gets.strip

	puts "-------------- \n"

	puts "Começaremos o jogo para você, #{nome}" 
	nome
end

def pede_dificuldade
	puts "Qual o nível de dificuldade?"
	puts "(1) Muito fácil (2) Fácil (3) Normal (4) Difícil (5) Muito difícil"
	puts "Escolha: "
	dificuldade = gets.to_i
end



def sorteia_numero(dificuldade)
	case dificuldade
	when 1
		maximo = 30
	when 2 
		maximo = 60
	when 3
		maximo = 100
	when 4
		maximo = 150
	else
		maximo = 200
	end

	puts "Escolhendo um número secreto entre 1 e #{maximo - 1}..."

	# The Random class itself acts as a random generator
	# http://stackoverflow.com/questions/198460/how-to-get-a-random-number-in-ruby
	numero_secreto = Random.rand(1...maximo)
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
		ganhou
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

def joga(nome, dificuldade)
	numero_secreto = sorteia_numero(dificuldade)
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

		if nome = "Manu"
			ganhou
			break
		end

		pontos_ate_agora -= pontos_a_perder
		
		# coloca um elemento dentro do array
		chutes << chute

		if verifica_acerto numero_secreto, chute
			break
		end
	end

	puts "Você ganhou #{pontos_ate_agora} pontos."
end

def ganhou
    puts
    puts "             OOOOOOOOOOO               "
    puts "         OOOOOOOOOOOOOOOOOOO           "
    puts "      OOOOOO  OOOOOOOOO  OOOOOO        "
    puts "    OOOOOO      OOOOO      OOOOOO      "
    puts "  OOOOOOOO  #   OOOOO  #   OOOOOOOO    "
    puts " OOOOOOOOOO    OOOOOOO    OOOOOOOOOO   "
    puts "OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO  "
    puts "OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO  "
    puts "OOOO  OOOOOOOOOOOOOOOOOOOOOOOOO  OOOO  "
    puts " OOOO  OOOOOOOOOOOOOOOOOOOOOOO  OOOO   "
    puts "  OOOO   OOOOOOOOOOOOOOOOOOOO  OOOO    "
    puts "    OOOOO   OOOOOOOOOOOOOOO   OOOO     "
    puts "      OOOOOO   OOOOOOOOO   OOOOOO      "
    puts "         OOOOOO         OOOOOO         "
    puts "             OOOOOOOOOOOO              "
    puts
    puts "               Acertou!                "
    puts
end

def nao_quer_jogar
	puts "Deseja jogar novamente? (S/N)"
	quero_jogar = gets.strip
	nao_quero_jogar = quero_jogar.upcase == "N"
end

nome = da_boas_vindas
dificuldade = pede_dificuldade

loop do
	joga(nome, dificuldade)
	if nao_quer_jogar
		break
	end
end

