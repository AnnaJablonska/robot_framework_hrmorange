*** Keywords ***
Strona logowania
    Open Browser    https://opensource-demo.orangehrmlive.com/      Chrome
#nazwy tak jak u góry!!!
Username
    [Arguments]  ${Username}
    Input Text  id=txtUsername  ${Username}

Password
    [Arguments]  ${Password}
    Input Text  id=txtPassword     ${Password}

Zatwierdz
    Click Button    id=btnLogin

InvalidMsg
    Element Should Be Visible   id=spanMessage

WelcomeBtn
    Click Element    id=welcome

