*** Settings ***
Documentation    Realizar compra de passagem a partir de uma lista
Library          SeleniumLibrary

Resource         ..//..//resource/base.robot

Test Setup       Abrir Navegador
Test Teardown    Fechar Navegador

Test Template    Selecionar Origem e Destino

*** Test Cases ***              ORIGEM      DESTINO
Passagem Paris-Buenos Aires     Paris       Buenos Aires
Passagem-San Diego-Roma         San Diego   Rome
CT22-Boston-London              Boston      London


*** Keywords ***
Selecionar Origem e Destino
    [Arguments]     ${origem}   ${destino}
    Selecionar origem e destino do voo      ${origem}   ${destino}
    Validar o Titulo de Origem e Destino    ${origem}   ${destino}

