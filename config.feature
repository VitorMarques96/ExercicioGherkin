#language: pt 

Funcionalidade: Configurar Produto
    Como cliente da EBAC-SHOP 
    Quero configurar meu produto de acordo com meu tamanho e gosto 
    E escolher a quantidade 
    Para depois inserir no carrinho

Contexto: Dado que eu estou na página de seleção de produtos da EBAC-SHOP

Cenário: Seleção de cor, tamanho e quantidade
    Quando eu selecionar uma cor de produto
    E um tamanho e quantidade de produtos
    Então os campos de seleção de cor, tamanho e quantidade devem estar preenchidos obrigatoriamente

Cenário: Limite de Produtos
    Quando eu tiver adicionado 10 produtos
    E tentar adicionar mais um produto
    Então será exibida uma mensagem dizendo não ser possível adicionar mais produtos

Cenário: Botão Limpar
    Quando eu clicar no botão Limpar
    Então todas as opções selecionadas devem ser deletadas