*** Settings ***

Library   SeleniumLibrary


*** Keywords ***

Access To URL
    [Arguments]    ${URL}    ${browser}
    Open Browser   ${URL}    ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    10s

Access To Authentication Page
    [Arguments]    ${authpage_button_locator}
    Click Element    ${authpage_button_locator}

