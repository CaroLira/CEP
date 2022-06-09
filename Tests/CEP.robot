*** Settings *****
Resource            ../Resources/PageObject/CEP.robot
Resource            ../Resources/Resources.robot 
Suite Setup         Inicio do Teste
Suite Teardown      Final do Teste

*** Test Cases ***
Cenario 1: localizar endereco atraves do cep
    Dado que estou na base de dados
    Quando preencho o cep
    Entao tenho acesso as informacoes do endereco