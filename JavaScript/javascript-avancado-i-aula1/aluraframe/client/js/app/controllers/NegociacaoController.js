class NegociacaoController {

	constructor() {
		let $ = document.querySelector.bind(document);

		this._inputData 		= $('#data');
		this._inputQuantidade 	= $('#quantidade');
		this._inputValor		= $('#valor');
	}

	adiciona(event) {
		event.preventDefault();
		
		let negociacao = new Negociacao(
			// helper
			DateHelper.textoParaData(this._inputData.value),
			this._inputQuantidade.value,
			this._inputValor.value
		);
		// helper
		let diaMesAno = DateHelper.dataParaTexto(negociacao.data);

		// adicionar a negociacao em uma lista
	}

}