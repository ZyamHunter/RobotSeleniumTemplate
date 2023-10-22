*** Settings ***
Documentation       Validação automatizada do teste regressivo de login

Resource            ../../Pages/Home_Login.robot
Resource            ../../Pages/Home_Coordinator.robot


*** Keywords ***
CT: Logar como coordenador
    Dado que o usuário esteja na página de login
    Quando preencher as credenciais corretamente    coordinator
    Então será logado no sistema
