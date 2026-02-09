*** Settings ***

Library   SeleniumLibrary


*** Keywords ***

Enter User Credentials To Register
    [Arguments]        ${USER_CREDENTIALS}    ${LOCATORS}    ${register_button_locator}
    Input Text    ${LOCATORS}[reg_username_field_locator]   ${USER_CREDENTIALS}[username]
    Input Text    ${LOCATORS}[reg_usermail_field_locator]  ${USER_CREDENTIALS}[usermail]
    Input Text    ${LOCATORS}[reg_userpassword_field_locator]   ${USER_CREDENTIALS}[userpassword]
    Click Element    ${register_button_locator}

Enter User Credentials To Login
    [Arguments]        ${USER_CREDENTIALS}    ${LOCATORS}    ${login_button_locator}
    Input Text    ${LOCATORS}[usermail_field_locator]  ${USER_CREDENTIALS}[usermail]
    Input Text    ${LOCATORS}[userpassword_field_locator]   ${USER_CREDENTIALS}[userpassword]
    Click Element    ${login_button_locator}

Verify Error Message Is Displayed
    [Arguments]    ${error_message}
    Page Should Contain   ${error_message}

