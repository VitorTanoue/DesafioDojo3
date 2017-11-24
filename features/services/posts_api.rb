class PostsApi
	include HTTParty

	base_uri ENVIRONMENT['url']
	format :json

	def criar_livro(body)
		self.class.post('/api/Books', 
			:body => body.to_json, 
			:headers => {'Content-Type' => 'application/json'})
	end

	def consultar_livro(id=nil)
		self.class.get("/api/Books/#{id}")
	end

	def alterar_livro(body,id)
		self.class.put('/api/Books/'+id, 
			:body => body.to_json, 
			:headers => {'Content-Type' => 'application/json'})
	end
end

