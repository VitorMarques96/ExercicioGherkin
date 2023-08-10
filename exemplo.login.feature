#language: pt

Funcionalidade: Login
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Contexto: Dado que eu acesse a página de login do portal EBAC-SHOP


    Cenário: Autenticação válida
    Quando eu digitar meu usuário "steve@ebac.com.br"
    E minha senha "senha123"
    Então deve me direcionar para a tela de checkout

    Cenário: Autenticação de senha inválida
    Quando eu digitar meu usuário "steve@ebac.com.br"
    E minha senha "asafasf"
    Então retorne uma mensagem de alerta "Usuário ou senha inválidos"

    Cenário: Autenticação de usuário inválida
    Quando eu digitar meu usuário "asdaf@ebac.com.br"
    E minha senha "senha123"
    Então retorne uma mensagem de alerta "Usuário ou senha inválidos"


    Esquema de cenário: Autenticar múltiplos usuários
        Quando eu digitar meu <usuario>
        E minha <senha>
        Então realize a validação e me retorne um <resultado>

        Examplos:
            | usuario           | senha    | resultado |
            | steve@ebac.com.br | senha123 | Válido    |
            | steve@ebac.com.br | asafasf  | Inválido  |
            | asdaf@ebac.com.br | senha123 | Inválido  |