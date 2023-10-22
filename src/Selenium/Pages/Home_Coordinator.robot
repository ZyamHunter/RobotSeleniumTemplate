*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Home_Coordinator.robot
Resource    ../Components/Click_Element.robot


*** Keywords ***
Então será logado no sistema
    Wait Until Page Contains    ${HOME_WELCOME}

    Clicar no elemento    ${FIELD_SCHOOL_OPTION}
    Clicar no elemento    ${SCHOOL_OPTION}
    Click Button    Entrar

Dado que esteja logado no sistema
    ${LOCATION}    Get Location
    IF    '${LOCATION}' != '${ENVS['BASE_HOME_URL_COORDINATOR']}'
        Go To    ${ENVS['BASE_HOME_URL_COORDINATOR']}
    END

    Wait Until Page Contains    ${HOME_WELCOME}

E clique em Eletivas
    Clicar no elemento    ${MENU_PRODUCTS}
    Clicar no elemento    ${ELECTIVE_OPTION}

E clique em Usuários
    Clicar no elemento    ${USERS_OPTION}
