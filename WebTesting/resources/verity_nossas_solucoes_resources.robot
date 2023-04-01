*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${URL}                     https://www.verity.com.br/
${BANNER_NEURONA}          //div[@class='KcpHeO tz5f0K comp-lfhf8n3o wixui-rich-text']
${CLOSE_BUTTON}            //*[@data-testid="popupCloseIconButtonRoot"]
${NOSSAS_SOLUÇÕES}         //*[@data-testid="richTextElement"][contains(.,'Nossas soluções')]
${CONTATO}                 //a[@data-testid='linkElement'][contains(.,'CONTATO')]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome    options=add_argument("--start-maximized")

Fechar o navegador
    Close Browser

Dado que eu acesse a "home page" do site https://www.verity.com.br/
    Go To            url=${URL}

E fecho o banner "Neurona"
    Wait Until Element Is Visible    locator=${BANNER_NEURONA}    timeout=10 seconds
    Click Element                    locator=${CLOSE_BUTTON}

Quando eu rolo a página
    Scroll Element Into View        locator=${NOSSAS_SOLUÇÕES}

Então encontro o título "Nossas Soluções"
    Wait Until Element Is Visible    locator=${NOSSAS_SOLUÇÕES}