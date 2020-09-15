Dado("a APITrello definida") do
  @card = Crud.new
end

Quando("é enviada a requisição para criar um card") do
  $response = @card.create
  $id = $response["id"]
end

Então("devo ver as informações do registro") do
  expect(@card.create.code).to eq (200)
end

Quando("é enviada a requisição para editar o card") do
  $response = @card.editar($id).code
end

Então("devo ver as informações do registro alteradas") do
  expect($response).to eq (200)
end

Quando("é enviada a requisição para remover o card") do
  $response = @card.excluir($id).code
end

Então("posso visualizar a mensagem de sucesso da operação") do
  expect($response).to eq (200)
end
