*** Settings ***
Documentation    Teste do fluxo de compra (e2e)

Resource         ..//..//resource/base.robot


Test Setup       Abrir Navegador
Test Teardown    Fechar Navegador


*** Test Cases ***
Comprar primeira passagem para o destino
    Selecionar origem e destino do voo
    Selecionar Primeiro Voo
    Preencher nome "Viviane"
    Selecionar bandeira "Diner's Club"
    Clicar em Lembrar de mim
    Clicar no botão Purchase Flight
    Validar a mensagem de agradecimento "Thank you for your purchase today!"
    Validar o preco da passagem "555 USD"

Comprar primeira passagem pagamento com American Express
    Selecionar origem e destino do voo
    Selecionar Primeiro Voo
    Preencher nome "Beatriz"
    Selecionar bandeira "American Express"
    Clicar em Lembrar de mim
    Clicar no botão Purchase Flight
    Validar a mensagem de agradecimento "Thank you for your purchase today!"
    Validar o preco da passagem "555 USD"

Comprar uma passagem da lista
    Selecionar origem e destino do voo
    Selecionar Voo na Posicao "3"
    Preencher nome "Luiza"
    Selecionar bandeira "Visa"
    Clicar em Lembrar de mim
    Clicar no botão Purchase Flight
    Validar a mensagem de agradecimento "Thank you for your purchase today!"
    Validar o preco da passagem "555 USD"

