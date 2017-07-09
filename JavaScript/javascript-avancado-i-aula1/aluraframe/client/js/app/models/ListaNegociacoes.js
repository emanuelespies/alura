class ListaNegociacoes {
	constructor() {
		this._negociacoes = [];
	}

	adiciona(negociacao) {
		this._negociacoes.push(negociacao);
	}

	get negociacoes() {
		// blindando o get para nao sofrer alterações
		return [].concat(this._negociacoes);
	}
}