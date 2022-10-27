*** Settings ***
Documentation    Fluxo de compra da T-shirt

Resource         ../resource/base_app.robot

Test Setup       Abrir o app
Test Teardown    Fechar o app

*** Variables ***
${nome_produto}         Sauce Lab Bolt T-Shirt
${preco_unitario}       $ 15.99
${quant_inicio}         1
${quantidade}           10
${quantidade_items}     10 Items
${preco_total}          $ 159.90

*** Test Cases ***
Comprar camiseta preta com estampa de raio
    Selecionar o produto "Sauce Lab Bolt T-Shirt"
    Validar nome do produto, preco e quantidade inicial    ${nome_produto}    ${preco_unitario}    ${quant_inicio}
    Aumentar a quantidade do produto para 2
    Adicionar o produto no carrinho
    Ir para o carrinho de compras
    Validar informacoes do produto no carrinho             ${nome_produto}    ${preco_unitario}     ${quantidade}     ${quantidade_items}    ${preco_total}
