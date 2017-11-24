#language: pt

@alterar @API
Funcionalidade: Alterar Livro
	Eu como usuário
	Desejo alterar um livro
	Para atualizacao

	Contexto: Ter credenciais para acessar a API

	Cenário: Alterar um livro
		Quando eu alterar o livro numero 10
		Então o status code ira retornar 200