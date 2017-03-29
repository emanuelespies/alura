class NegociacaoController {

	constructor() {
		let $ = document.querySelector.bind(document);

		this._inputData 		= $('#data');
		this._inputQuantidade 	= $('#quantidade');
		this._inputValor		= $('#valor');
	}

	adiciona(event) {
		event.preventDefault();
		
		console.log(typeof(this._inputData.value));

		//let data = new Date(this._inputData.value.split('-'));
		//let data = new Date(this._inputData.value.replace(/-/g, ','));

	/*
	let dataS = this._inputData.value.split('-');
	Number(dataS[0]);
	Number(dataS[1]);
	Number(dataS[2]);

	dataS[1] -= 1;

	let data = new Date(dataS[0], dataS[1], dataS[2]);
	
	ou
	
	let data = new Date(
		this._inputData.value
			.split('-')
			.map(function(item, indice) {
				return item - indice % 2
			}
		})
	);
	*/

		let data = new Date(
			...this._inputData.value
				.split('-')
				.map((item, indice) => item - indice % 2)
		);

		let negociacao = new Negociacao(
			data,
			this._inputQuantidade.value,
			this._inputValor.value
		);

		console.log(negociacao);

		// adicionar a negociacao em uma lista
	}

}