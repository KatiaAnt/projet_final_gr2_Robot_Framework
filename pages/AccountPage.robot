*** Settings ***

Library   SeleniumLibrary


*** Keywords ***

Verify User Is Logged In
    [Arguments]   ${username} 
        Page Should Contain    ${username}
    

