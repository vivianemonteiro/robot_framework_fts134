*** Settings ***
Documentation    Mapeamento das acoes da pagina de pagamento


*** Keywords ***
Preencher nome "${nome}"
    wait until element is enabled       id = inputName             30
    input text                          id = inputName             ${nome}

Preencher endereco "${endereco}"
    input text                          id = address               ${endereco}

Preencher cidade "${cidade}"
    input text                          id = city                  ${cidade}

Preencher uf "${uf}"
    input text                          id = state                 ${uf}

Preencher CEP "${cep}"
    input text                          id = zipCode               ${cep}

Selecionar bandeira "${bandeira}"
    select from list by label           id = cardType              ${bandeira}

Preencher mes de vencimento do cartao "${mes}"
    clear element text                  id = creditCardMonth
    input text                          id = creditCardMonth       ${mes}

Preencher ano de vencimento do cartao "${ano}"
    clear element text                  id = creditCardYear
    input text                          id = creditCardYear        ${ano}

Preencher nome do titular do cartao "$${titular}"
    input text                          id = nameOnCard            ${titular}

Clicar em Lembrar de mim
    select checkbox                     id = rememberMe

Clicar no botão Purchase Flight
    click button                        class = btn.btn-primary