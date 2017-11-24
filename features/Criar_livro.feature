#language: pt

@criar @API
Funcionalidade: Criar Livro
	Eu como usuário
	Desejo criar um livro
	Para que fique disponível na API

	Contexto: Ter credenciais para acessar a API

	Cenário: Criar um novo livro
		Quando cadastrar um novo livro no site
		Então o status code da resposta será 200