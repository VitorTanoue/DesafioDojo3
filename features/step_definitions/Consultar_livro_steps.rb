Quando("eu consultar o livro numero {int}") do |nrlivro|
	@response = PostsApi.new.consultar_livro(nrlivro)
	puts 'ID:'+ @response['ID'].to_s 
	puts 'Title:'+ @response['Title'].to_s 
	puts 'Description:'+ @response['Description'].to_s 
	puts 'PageCount:'+ @response['PageCount'].to_s 
	puts 'Excerpt:'+ @response['Excerpt'].to_s
	puts 'PublishDate:'+ @response['PublishDate'].to_s
end

Então("o status code devera ser {int}") do |codigo|
	expect(@response.code).to eq (codigo)
end