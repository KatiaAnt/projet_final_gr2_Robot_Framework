*** Settings ***

Library   SeleniumLibrary


*** Keywords ***

Verify User Is Logged In and Welcomed
    [Arguments]   ${username}    ${welcome_message}    ${welcome_message_locator}
    Page Should Contain    ${username}
    Run Keyword And Continue On Failure     Element Should Contain   ${welcome_message_locator}   ${welcome_message}
    ...    msg=ERROR: Login is OK (Page found), BUT the welcome message is incorrect!
