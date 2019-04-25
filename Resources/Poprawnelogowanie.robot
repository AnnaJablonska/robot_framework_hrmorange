*** Settings ***
Documentation   Logowanie
Library  Selenium2Library

*** Keywords ***

PoprawneLogowanie
    Strona logowania
    Maximize Browser Window
    Username    Admin
    Password    admin123
    sleep  3s
    Zatwierdz
