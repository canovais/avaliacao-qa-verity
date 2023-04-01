*** Settings ***
Documentation        Essa suite valida o título "Nossas Soluções" na Home Page do site.
Resource             verity_resources.robot
Test Setup           Abrir o navegador
Test Teardown        Fechar o navegador

*** Test Cases ***

Caso de Testes - Acesso a "Nossas Soluções"
    [Documentation]        Esse teste verifica a home do site
    [Tags]        @home
    Dado que eu acesse a "home page" do site https://www.verity.com.br/
    E fecho o banner "Neurona"
    Quando eu rolo a página
    Então encontro o título "Nossas Soluções"


