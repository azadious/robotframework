*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://pui-admin.silverman.cloud
${BROWSER}        Chrome

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    admin-pui
    Input Password    password
    Submit Credentials
    Welcome Page Should Be Open
    Sleep   10s
    [Teardown]    Close Browser

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    SILVERMAN

Input Username
    [Arguments]    ${username}
    Input Text    userName    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password    ${password}

Submit Credentials
    Click Button    css:button.btn

Welcome Page Should Be Open
    Title Should Be    SILVERMAN
