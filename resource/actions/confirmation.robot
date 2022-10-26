*** Settings ***
Documentation    Mapeamento das acoes da pagina de confirmacao


*** Keywords ***
Validar a mensagem de agradecimento "${mensagem}"
    wait until element is visible       xpath = //h1                              30
    element text should be              xpath = //h1                              ${mensagem}

Validar o id da passagem "${id}"
    element text should be              css = tr:nth-child(1) > td:nth-child(2)   ${id}

Validar o status da passagem "${status}"
    element text should be              css = tr:nth-child(2) > td:nth-child(2)   ${status}

Validar o preco da passagem "${preco}"
    wait until element is visible       css = tr:nth-child(3) > td:nth-child(2)   30
    element text should be              css = tr:nth-child(3) > td:nth-child(2)   ${preco}

Validar os quatro ultimos digitos do cartao "${digitos}"
    element text should be              css = tr:nth-child(4) > td:nth-child(2)   ${digito}

Validar a data de expiracao do cartao "${validade}"
    element text should be              css = tr:nth-child(5) > td:nth-child(2)   ${validade}

Validar o codigo de seguranca do cartao "${cvv}"
    element text should be              css = tr:nth-child(6) > td:nth-child(2)   ${cvv}

Validar a data da transacao "${data}"
    element text should be              css = tr:nth-child(7) > td:nth-child(2)   ${data}

Validar o json da transacao "${json_esperado}"
    element text should be              tag = pre                                 ${json_esperado}