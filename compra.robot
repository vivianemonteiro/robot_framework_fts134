# Configura
*** Settings ***
Documentation    Fluxo de compra no site Blazedemo (e2e)

Library          SeleniumLibrary

#Test Setup       open browser   ${url}  ${browser}
Test Teardown    Encerrar

*** Variables ***
${url}      https://www.blazedemo.com
${browser}  Chrome

# Executa / Valida
*** Test Cases ***
Compra de Passagem
    [Tags]    SMOKE
    Dado que acesso o site Blazedemo
    Quando seleciono a origem como "São Paolo" e destino como "New York"
    E clico no botao Find Flights
    Entao exibe o titulo informando a origem e o destino
    Quando seleciono o primeiro voo
    E preencho o nome "Viviane"
    E seleciono a bandeira "American Express"
    E marco a opcao Remember Me
    E clico no botao Purchase Flight
    Entao exibe a mensagem "Thank you for your purchase today!"
    E exibe o preco da passagem como "555 USD"

*** Keywords ***
Dado que acesso o site Blazedemo
    open browser   ${url}   ${browser}
    wait until element is visible   xpath = //h1                                          30000ms
    wait until element contains     xpath = //h1   Welcome to the Simple Travel Agency!    30000ms
    wait for condition              return document.title == "BlazeDemo"        30000ms

Quando seleciono a origem como "${origem}" e destino como "${destino}"
    set test variable   ${origem}
    set test variable   ${destino}
    select from list by label   id = fromPort     ${origem}
    select from list by label   id = toPort       ${destino}

E clico no botao Find Flights
    click button    class = btn.btn-primary

Entao exibe o titulo informando a origem e o destino
    element should contain  xpath = //h3    Flights from ${origem} to ${destino}:

Quando seleciono o primeiro voo
    click button    class = btn.btn-small

E preencho o nome "${nome}"
    element text should be      xpath = //h2        Your flight from TLV to SFO has been reserved.
    input text                  id = inputName      ${nome}

E seleciono a bandeira "${bandeira}"
    select from list by label   id = cardType       ${bandeira}

E marco a opcao Remember Me
    click element               id = rememberMe

E clico no botao Purchase Flight
    click button                class = btn.btn-primary

Entao exibe a mensagem "${mensagem}"
    wait until element is visible       xpath = //h1
    element text should be              xpath = //h1    ${mensagem}

E exibe o preco da passagem como "${preco}"
    element text should be             css = tr:nth-child(3) > td:nth-child(2)     ${preco}

Encerrar
    close browser