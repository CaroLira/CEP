*** Settings ***
Library         SeleniumLibrary
Library         ScreenCapLibrary


*** Variable ***
${BROWSER}                  Chrome 
${URL}                      http://www.republicavirtual.com.br/cep/exemplos.php
${CAMPO_CEP}                id=campoCEP
${BTN_BUSCAR}               css=center > input[type="button"]:nth-child(3)

*** Keywords ***
Dado que estou na base de dados
    Go To                               ${URL}
    Wait Until Page Contains            buscar cep
    
Quando preencho o cep
    Input Text                          ${CAMPO_CEP}                51320480
    Click Element                       ${BTN_BUSCAR}

Entao tenho acesso as informacoes do endereco
    Wait Until Page Contains            Rua
    Wait Until Page Contains            Frei Francisco Sampaio
    Wait Until Page Contains            COHAB
    Wait Until Page Contains            Recife
    Wait Until Page Contains            PE
    Mouse Up                            css=div.conteudo > h1:nth-child(34)
    Sleep                               5
    Capture Page Screenshot
