*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${URL}                     https://www.verity.com.br/
${BANNER_NEURONA}          //div[@class='KcpHeO tz5f0K comp-lfhf8n3o wixui-rich-text']
${CLOSE_BUTTON}            //*[@data-testid="popupCloseIconButtonRoot"]
${MENU_CONTATO}            //a[@data-testid='linkElement'][contains(.,'CONTATO')]
${NOSSO_CONTATO}           //*[@data-testid="richTextElement"][contains(., "Nosso Contato")]
${SEÇÃO_VAMOS_CONVERSAR}   //*[@data-testid="richTextElement"][contains(.,'Vamos conversar')]
${NOME}                     //input[@name="nome"]
${EMAIL}                    //input[@name="email"]
${TELEFONE}                 //input[@name="phone"]
${DESAFIO}                  //textarea
${ACEITE_CHECKBOX}          //input[@type="checkbox"]
${ENVIAR_BUTTON}            //*[@data-testid="buttonElement"][contains(., "Enviar")]

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

Quando clico no menu "Contato"
    Click Element                    locator=${MENU_CONTATO}
    Wait Until Element Is Visible    locator=${NOSSO_CONTATO}    timeout=10 seconds

E rolo a página
    Scroll Element Into View        locator=${SEÇÃO_VAMOS_CONVERSAR}

E encontro a seção "Vamos Conversar"
    Wait Until Element Is Visible    locator=${SEÇÃO_VAMOS_CONVERSAR}    timeout=10 seconds

Então preencho com meus dados pessoais
    Input Text                       locator=${NOME}    text=Carla Andrade de Novais
    Input Text                       locator=${EMAIL}    text=carla.andraenovaes@gmail.com
    Input Text                       locator=${TELEFONE}    text=11 95912-2407
    Input Text                       locator=${DESAFIO}    text=Mudar a vida das pessoas através da tecnologia

E clico no checkbox e em seguida em enviar os dados
    Click Element                    locator=${ACEITE_CHECKBOX}
    Click Button                     locator=${ENVIAR_BUTTON}
