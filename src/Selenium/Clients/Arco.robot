*** Settings ***
Documentation       Arquivo dedicado a organização e chamada dos casos de teste

Resource            ../TestCases/Coordinator/Login_Coordinator.robot
Resource            ../TestCases/Teacher/Login_Teacher.robot
Resource            ../TestCases/Student/Login_Student.robot
Resource            ../TestCases/Coordinator/Virtual_Group.robot
Resource            ../TestCases/Coordinator/Users.robot
Resource            ../TestCases/Teacher/Criar_Professor.robot

Test Teardown       Sleep    2s


*** Test Cases ***
LMS
    #CT: Logar como coordenador
    #CT: Criar grupo virtual
    #CT: Criar usuário
    CT: Criar professor

    # CT: Logar como professor
    # CT: Logar como aluno
