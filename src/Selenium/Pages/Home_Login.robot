*** Settings ***
Library     SeleniumLibrary
Library     ../../Helpers/Request_Warning.py
Library     ../../Helpers/Get_Envs.py
Library     ../../Helpers/Auth.py
Resource    ../Resources/Home_Login.robot
Resource    ../Components/Input_Text.robot
Resource    ../Components/Click_Element.robot
Resource    ../Resources/Home_Coordinator.robot



*** Keywords ***
Dado que o usuário esteja na página de login
    Disable Request Warning

    ${ENVS}    Get Enviroment Variables
    Set Global Variable    ${ENVS}    ${ENVS}

    ${options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    ${prefs}    Evaluate
    ...    {'profile.default_content_setting_values.media_stream_mic': 1, 'profile.default_content_setting_values.media_stream_camera': 1, 'profile.default_content_setting_values.geolocation': 1, 'profile.default_content_setting_values.notifications': 1}
    #Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --disable-infobars
    Call Method    ${options}    add_argument    use-fake-device-for-media-stream
    Call Method    ${options}    add_argument    use-fake-ui-for-media-stream
    Call Method    ${options}    add_experimental_option    prefs    ${prefs}
    Create Webdriver    Chrome    options=${options}
    Maximize Browser Window
    Go To    ${ENVS['BASE_URL']}/login

    [Arguments]

    Sleep    5

    Preencher Campo    arcoplus
    Tecla    tab
    Preencher Campo    Arcoplus@2023
    Tecla    enter

Quando preencher as credenciais corretamente
    
    [Arguments]    ${USER_TYPE}


    IF    '${USER_TYPE}' == 'coordinator'
        ${USER_LOGIN}    Set Variable    ${ENVS['USER_COORDINATOR']}
        ${PASS_LOGIN}    Set Variable    ${ENVS['PASS_COORDINATOR']}
    ELSE IF    '${USER_TYPE}' == 'teacher'
        ${USER_LOGIN}    Set Variable    ${ENVS['USER_TEACHER']}
        ${PASS_LOGIN}    Set Variable    ${ENVS['PASS_TEACHER']} 
    ELSE
        ${USER_LOGIN}    Set Variable    ${ENVS['USER_STUDENT']}
        ${PASS_LOGIN}    Set Variable    ${ENVS['PASS_STUDENT']}
    END

    Inserir texto    ${FIELD_USER}    ${USER_LOGIN}
    Inserir texto    ${FIELD_PASSWORD}    ${PASS_LOGIN}
    Clicar no elemento    ${BUTTON_LOGIN}

Dado que esteja logado como
    Disable Request Warning

    ${ENVS}    Get Enviroment Variables
    Set Global Variable    ${ENVS}    ${ENVS}

    ${options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    ${prefs}    Evaluate
    ...    {'profile.default_content_setting_values.media_stream_mic': 1, 'profile.default_content_setting_values.media_stream_camera': 1, 'profile.default_content_setting_values.geolocation': 1, 'profile.default_content_setting_values.notifications': 1}
    #Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --disable-infobars
    Call Method    ${options}    add_argument    use-fake-device-for-media-stream
    Call Method    ${options}    add_argument    use-fake-ui-for-media-stream
    Call Method    ${options}    add_experimental_option    prefs    ${prefs}
    Create Webdriver    Chrome    options=${options}
    Maximize Browser Window
    Go To    ${ENVS['BASE_URL']}/login

    [Arguments]    ${USER_TYPE}

    Sleep    5

    Preencher Campo    arcoplus
    Tecla    tab
    Preencher Campo    Arcoplus@2023
    Tecla    enter

    IF    '${USER_TYPE}' == 'coordinator'
        ${USER_LOGIN}    Set Variable    ${ENVS['USER_COORDINATOR']}
        ${PASS_LOGIN}    Set Variable    ${ENVS['PASS_COORDINATOR']}
    ELSE IF    '${USER_TYPE}' == 'teacher'
        ${USER_LOGIN}    Set Variable    ${ENVS['USER_TEACHER']}
        ${PASS_LOGIN}    Set Variable    ${ENVS['PASS_TEACHER']} 
    ELSE
        ${USER_LOGIN}    Set Variable    ${ENVS['USER_STUDENT']}
        ${PASS_LOGIN}    Set Variable    ${ENVS['PASS_STUDENT']}
    END

    Inserir texto    ${FIELD_USER}    ${USER_LOGIN}
    Inserir texto    ${FIELD_PASSWORD}    ${PASS_LOGIN}
    Clicar no elemento    ${BUTTON_LOGIN}

    Sleep    5

    Wait Until Page Contains    ${HOME_WELCOME}

    Clicar no elemento    ${FIELD_SCHOOL_OPTION}
    Clicar no elemento    ${SCHOOL_OPTION}
    Click Button    Entrar
