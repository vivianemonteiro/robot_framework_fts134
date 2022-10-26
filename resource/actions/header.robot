*** Settings ***
Documentation    Mapeamento das ações do cabeçalho das página


*** Keywords ***
Clicar em Travel The Word
    wait until element is enabled       link = Travel The World     30
    click link                          link = Travel The World

Clicar em Home
    wait until element is enabled       link = home                 30
    click link                          link = home

