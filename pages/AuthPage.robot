*** Settings ***

Library   SeleniumLibrary


*** Keywords ***

Enter User Credintials To Register
    [Arguments]        ${USER_CREDINTIALS}    ${LOCATORS}    ${Register_button_locator}   
    Input Text    ${LOCATORS}[reg_username_field_locator]   ${USER_CREDINTIALS}[username] 
    Input Text    ${LOCATORS}[reg_usermail_field_locator]  ${USER_CREDINTIALS}[usermail] 
    Input Text    ${LOCATORS}[reg_userpassword_field_locator]   ${USER_CREDINTIALS}[userpassword]
    Click Element    ${Register_button_locator}

Enter User Credintials To Login
    [Arguments]        ${USER_CREDINTIALS}    ${LOCATORS}    ${Login_button_locator}   
    Input Text    ${LOCATORS}[usermail_field_locator]  ${USER_CREDINTIALS}[usermail] 
    Input Text    ${LOCATORS}[userpassword_field_locator]   ${USER_CREDINTIALS}[userpassword]
    Click Element    ${Login_button_locator}

Verify Error Message Is Displayed
    [Arguments]    ${error_message}
    Page Should Contain   ${error_message} 

