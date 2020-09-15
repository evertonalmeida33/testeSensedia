require "HTTParty"
require "httparty/request"
require "httparty/response/headers"

class Crud
  include HTTParty
  base_uri "https://api.trello.com/1"

  nome = Faker::UniqueGenerator.clear
  nome = Faker::Job.title
  $body = { name: nome }.to_json

  $key = "ea30c4783d8cb186c6cd70f685ccaa52"
  $token = "6bafc8183ac31cc026e6969fa83c8dc510a059676a03dd9514e31504d280c975"

  $headers = {
    "Accept" => "application/vnd.tasksmanager.v2",
    "Content-Type" => "application/json",
  }

  def create
    idList = "5f5b688720f3011325a64491"

    self.class.post("/cards?idList=#{idList}&key=#{$key}&token=#{$token}", body: $body, headers: $headers)
  end

  def editar(id)
    self.class.put("/cards/#{id}?key=#{$key}&token=#{$token}", :body => $body1, headers: $headers)
  end

  def excluir(id)
    self.class.delete("/cards/#{id}?key=#{$key}&token=#{$token}", headers: $headers)
  end
end
