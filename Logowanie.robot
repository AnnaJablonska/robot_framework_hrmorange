*** Settings ***
Documentation   Logowanie
Library  Selenium2Library
Library  robot.utils.asserts
Resource  Resources/Keywords.robot
Resource  Resources/Poprawnelogowanie.robot

*** Test Cases ***

Poprawne logowanie
    Strona logowania
    Maximize Browser Window
    Username    Admin
    Password    admin123
    sleep  3s
    Zatwierdz
    Close Browser

Niepoprawne logowanie
    Strona logowania
    Maximize Browser Window
    Username  Admin
    Password    admin1
    Zatwierdz
    sleep   2
    InvalidMsg
    Close Browser

Wylogowanie
    PoprawneLogowanie
    sleep   3
    WelcomeBtn
    sleep   3
    Page Should Contain Element    xpath=//div/ul/li[2]/a[starts-with(@href, '/index.php/auth/logout')]
    Click Element    xpath=//div/ul/li[2]/a[starts-with(@href, '/index.php/auth/logout')]
    sleep  1
    Close Browser







