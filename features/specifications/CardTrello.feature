#language: pt

Funcionalidade: Criar, Editar e Excluir card
2. O usuário deve criar um card e editar esse card.
3. O usuário deve excluir esse card e também as sujeiras geradas por esta automação.

Contexto:
Dado a APITrello definida

@criarCard
Cenario: Criar Card
Quando é enviada a requisição para criar um card
Então devo ver as informações do registro 

@editarCard
Cenario: Editar Card
Quando é enviada a requisição para editar o card
Então devo ver as informações do registro alteradas

@excluirCard
Cenario: Excluir Card
Quando é enviada a requisição para remover o card
Então posso visualizar a mensagem de sucesso da operação

