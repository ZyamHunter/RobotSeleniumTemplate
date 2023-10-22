*** Settings ***
Documentation       Validação automatizada do login

Library             ../../Helpers/Get_Envs.py
Library             RequestsLibrary


*** Keywords ***
CT: Login com sucesso
    ${ENVS}    Get Enviroment Variables

    Create Session    alias=ARCO DEV    url=${ENVS['BASE_API']}    disable_warnings=1

    ${HEADERS}    Create Dictionary    Arco-Brand-Domain=escoladainteligencia.com.br

    ${CREDENTIALS}    Create Dictionary
    ...    email=${ENVS['USER_TEACHER']}
    ...    password=${ENVS['PASS_TEACHER']}

    ${AUTH_RESPONSE}    POST On Session    ARCO DEV    url=/v1/auth    headers=${HEADERS}    json=${CREDENTIALS}
