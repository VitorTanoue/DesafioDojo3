Quando("eu alterar o livro numero {int}") do |nrlivro|
	@response = PostsApi.new.alterar_livro(MASSA['alterar_livro'],nrlivro.to_s)
	puts 'ID:'+ @response['ID'].to_s 
	puts 'Title:'+ @response['Title'].to_s 
	puts 'Description:'+ @response['Description'].to_s 
	puts 'PageCount:'+ @response['PageCount'].to_s 
	puts 'Excerpt:'+ @response['Excerpt'].to_s
	puts 'PublishDate:'+ @response['PublishDate'].to_s
end

Então("o status code ira retornar {int}") do |codigo|
	expect(@response.code).to eq (codigo)
end