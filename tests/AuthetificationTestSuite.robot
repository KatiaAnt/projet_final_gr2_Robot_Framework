*** Settings ***

Library    SeleniumLibrary
Resource    ../pages/Variables.robot
Resource    ../pages/HomePage.robot
Resource    ../pages/AuthPage.robot
Resource    ../pages/AccountPage.robot
Suite Teardown   Close All Browsers


*** Test Cases ***

Register new user successfully
    [Documentation]    Verify that a new user can create an account with valid data.
    Access To URL    ${URL}    ${browser}
    Access To Authnetification Page    ${authpage_button_locator}
    # Passing user data and locators to the registration keyword
    Enter User Credintials To Register    ${NEW_USER_CREDINTIALS}    ${CREDINTIALS_LOCATORS}    ${Register_button_locator}        
    # Check if the correct username appears in the dashboard
    Verify User Is Logged In    ${NEW_USER_CREDINTIALS}[username]

Register existing user unsuccesfully
    [Documentation]    Verify that registration fails when using an email already in the database.
    Access To URL    ${URL}    ${browser}
    Access To Authnetification Page    ${authpage_button_locator}
    # Trying to register with data that already exists
    Enter User Credintials To Register    ${EXISTING_USER_CREDINTIALS}    ${CREDINTIALS_LOCATORS}    ${Register_button_locator}        
    # Expecting the system to display an error message
    Verify Error Message Is Displayed    ${registration_error_message}

Login existing user successfully
    [Documentation]    Verify that a registered user can access their account.
    Access To URL    ${URL}    ${browser}
    Access To Authnetification Page    ${authpage_button_locator}
    # Performing login action
    Enter User Credintials To Login   ${EXISTING_USER_CREDINTIALS}    ${CREDINTIALS_LOCATORS}    ${Login_button_locator} 
    # Check if the user is redirected to the account dashboard
    Verify User Is Logged In    ${EXISTING_USER_CREDINTIALS}[username]
    
    
    