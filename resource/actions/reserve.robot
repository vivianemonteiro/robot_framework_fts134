*** Settings ***
Documentation    Realizar a compra do voo

*** Keywords ***
Selecionar Primeiro Voo
    wait until element is enabled       class = btn.btn-small               30
    click button                        class = btn.btn-small

Selecionar Voo na Posicao "${num}"
    wait until element is enabled       css = tr:nth-child(${num}) .btn     30
    click button                        css = tr:nth-child(${num}) .btn

Validar o Titulo de Origem e Destino
   # [Arguments]     ${origem}   ${destino}
    element text should be              xpath = //h3    Flights from ${origem} to ${destino}:
