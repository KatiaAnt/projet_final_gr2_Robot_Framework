*** Settings ***

Library    SeleniumLibrary
Resource    ../pages/Variables.robot
Resource    ../pages/HomePage.robot
Resource    ../pages/AuthPage.robot
Resource    ../pages/AccountPage.robot
Test Setup      Open the browser and access Authentication page
Test Teardown   Run Keyword If Test Failed    Capture Page Screenshot
Suite Teardown   Close All Browsers

*** Keywords ***
Open the browser and access Authentication page
    Access To URL    ${URL}    ${browser}
    Access To Authentification Page    ${authpage_button_locator}

*** Test Cases ***

Register new user successfully
    [Documentation]    Verify that a new user can create an account with valid data.
    # Passing user data and locators to the registration keyword
    Enter User Credentials To Register    ${NEW_USER_CREDENTIALS}    ${CREDENTIALS_LOCATORS}    ${register_button_locator}
    # Check if the correct username appears in the dashboard and the mandatory welcome message defined in User Story 2
    Verify User Is Logged In and Welcomed    ${NEW_USER_CREDENTIALS}[username]    ${welcome_message}    ${welcome_message_locator}

Register existing user unsuccesfully
    [Documentation]    Verify that registration fails when using an email already in the database.
    # Trying to register with data that already exists
    Enter User Credentials To Register    ${EXISTING_USER_CREDENTIALS}    ${CREDENTIALS_LOCATORS}    ${register_button_locator}
    # Expecting the system to display an error message
    Verify Error Message Is Displayed    ${registration_error_message}

Login existing user successfully
    [Documentation]    Verify that a registered user can access their account.
    # Performing login action
    Enter User Credentials To Login   ${EXISTING_USER_CREDENTIALS}    ${CREDENTIALS_LOCATORS}    ${login_button_locator}
    # Check if the user is redirected to the account dashboard and the mandatory welcome message defined in User Story 2.
    Verify User Is Logged In and Welcomed    ${NEW_USER_CREDENTIALS}[username]    ${welcome_message}    ${welcome_message_locator}
