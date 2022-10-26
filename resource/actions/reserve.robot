*** Settings ***
Documentation    Realizar a compra do voo

*** Keywords ***
Selecionar Primeiro Voo
    click button    class = btn.btn-small

Selecionar Voo na Posicao "${num}"
    click button    css = tr:nth-child(${num}) .btn
