*** Settings ***
Documentation       Validação automatizada do teste regressivo de login

Resource            ../../Pages/Home_Login.robot
Resource    ../../Pages/Home_Coordinator.robot


*** Keywords ***
CT: Logar como professor
    Dado que o usuário esteja na página de login
    Quando preencher as credenciais corretamente    teacher
    Então será logado no sistema
