Dado("a APITrello definida") do
  @card = Crud.new
end

Quando("é enviada a requisição para criar um card") do
  $response = @card.create
end

Então("devo ver as informações do registro") do
  expect(@card.create.code).to eq (200)
end

Quando("é enviada a requisição para editar o card") do
  @id = JSON.parse($response)["id"]
end

Então("devo ver as informações do registro alteradas") do
  expect(@card.update(@id).code).to eq (200)
end

Quando("é enviada a requisição para remover o card") do
  @id = JSON.parse($response)["id"]
end

Então("posso visualizar a mensagem de sucesso da operação") do
  expect(@card.delete(@id).code).to eq (200)
end
