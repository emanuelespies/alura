class DateHelper {

	constructor() {
		// evitando que alguém instancie uma classe que só possui métodos estáticos
		throw new Error('DateHelper não pode ser instanciada');
	}
	// static métodos que invoco direto na classe, 
	// não precisando de uma instância da classe para isso
	static textoParaData(texto) {

		// fail fast
		if(!/\d{4}-\d{2}-\d{2}/.test(texto)) 
			throw new Error('Deve estar no formato aaaa-mm-dd');
		
		return new Date(...texto.split('-').map((item, indice) => item - indice % 2));
	}

	static dataParaTexto(data) {
		// template string `#{var}`
		return `${data.getDate()}/${data.getMonth()+1}/${data.getFullYear()}`;
	}
}