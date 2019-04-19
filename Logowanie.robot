*** Settings ***
Documentation   Logowanie
Library  Selenium2Library
Resource  Resources/Keywords.robot

*** Test Cases ***
Poprawne logowanie
    Strona logowania
    Maximize Browser Window
    Username    Admin
    Password    admin123
    sleep  3s
    Zatwierdz
    Close Browser




