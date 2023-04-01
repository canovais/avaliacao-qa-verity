*** Settings ***
Documentation        Essa suite testa o envio das informações de um cliente para contato com a Verity.
Resource             ../resources/verity_contato_resources.robot
Test Setup           Abrir o navegador
Test Teardown        Fechar o navegador

*** Test Cases ***

Caso de Testes - Acesso ao menu "Contato"
    [Documentation]        Esse teste valida o envio das informações de um cliente
    ...                    através do preenchimento do formulário da seção Vamos Conversar
    [Tags]        @home
    Dado que eu acesse a "home page" do site https://www.verity.com.br/
    E fecho o banner "Neurona"
    Quando clico no menu "Contato"
    E rolo a página
    E encontro a seção "Vamos Conversar"
    Então preencho com meus dados pessoais
    E clico no checkbox e em seguida em enviar os dados

