#language: pt

Funcionalidade: Tela de cadastro - Check out
    Como cliente da EBAC-SHOP 
    Quero fazer concluir meu cadastro    
    Para finalizar minha compra 

Contexto: Dado que estou na página de finalizar compra 

Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos 
    Quando eu preencher os campos obrigatórios com os dados de <nome>, <país>, <endereço>, <cidade>, <CEP>, <Telefone> e <endereço de email>
    E clicar no botão de finalizar compra
    Então o sistema deve finalizar a compra 

Exemplos:
    |  Nome  | País     | Endereço | Cidade    | CEP   | Telefone    | Endereço de email       | Resultado |
    | "Joao" | "Brasil" | "Rua 5"  | "Goiânia" | "XXX" | "XXXX-XXXX" | "emailvalido@gmail.com" | Válido    |


Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
    Quando inserir <email> no formato inválido
    Deve ser exibida uma mensagem de email inválido

Exemplos:
    | Endereço de email        | Resultado |
    | emailinvalido@email.com  | Inválido  |
    | emailinvalido2@email.com | Inválido  |
    | emailinvalido3@email.com | Inválido  |

Cenário:Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta. 
    Quando deixar de preencher algum campo obrigatório| 
    E clicar no botão de finalizar compra
    Entao deve ser exibida uma mensagem de erro indicando campos obrigatórios em branco