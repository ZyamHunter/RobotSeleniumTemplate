*** Settings ***
Documentation       Arquivo dedicado a organização e chamadas dos casos de teste

Resource            ../TestCases/Login.robot


*** Test Cases ***
Login
    CT: Login com sucesso
