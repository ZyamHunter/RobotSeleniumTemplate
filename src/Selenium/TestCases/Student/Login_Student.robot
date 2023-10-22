*** Settings ***
Documentation       Validação automatizada do teste regressivo de login

Resource            ../../Pages/Home_Login.robot
Resource    ../../Pages/Home_Coordinator.robot


*** Keywords ***
CT: Logar como aluno
    Dado que o usuário esteja na página de login
    Quando preencher as credenciais corretamente    student
    Então será logado no sistema
