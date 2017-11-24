#language: pt

@consultar @API
Funcionalidade: Consultar Livro
	Eu como usuário
	Desejo consultar um livro
	Para leitura

	Contexto: Ter credenciais para acessar a API

	Cenário: Consultar um livro
		Quando eu consultar o livro numero 50
		Então o status code devera ser 200