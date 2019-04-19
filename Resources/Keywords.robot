*** Keywords ***
Strona logowania
    Open Browser    https://opensource-demo.orangehrmlive.com/      Chrome
#nazwy tak jak o góry!!!
Username
    [Arguments]  ${Username}
    Input Text  txtUsername  ${Username}

Password
    [Arguments]  ${Password}
    Input Text  txtPassword     ${Password}

Zatwierdz
    Click Button    btnLogin
