*** Variables ***

# --- Test Environment ---
${URL}   https://shop-in.ovh/
${browser}    chrome

# --- User Test Data ---
# Increment this value to generate unique user data for each test run
${iteration}    8

# Dictionary to store new user information
&{NEW_USER_CREDINTIALS}
...        username=groupe2jean.dupond${iteration}
...        usermail=groupe2jean.dupond${iteration}@mail.com
...        userpassword=groupe2jean.dupond${iteration} 

# Dictionary to store data for tests expecting an existing account
&{EXISTING_USER_CREDINTIALS}
...        username=groupe2jean.dupond${iteration}
...        usermail=groupe2jean.dupond${iteration}@mail.com
...        userpassword=groupe2jean.dupond${iteration} 

# --- UI Locators ---
# Credentials Fields Locators
&{CREDINTIALS_LOCATORS}
# To Register
...    reg_username_field_locator=xpath://input[@id='reg_username']
...    reg_usermail_field_locator=xpath://input[@id='reg_email']
...    reg_userpassword_field_locator=xpath://input[@id='reg_password']     
# To Login
...    usermail_field_locator=xpath://input[@id='username']
...    userpassword_field_locator=xpath://input[@id='password']     

# Buttons and Navigation
${authpage_button_locator}    xpath://*[name()='path' and contains(@d,'M7.5,0C3.4')]
${Register_button_locator}   xpath://button[@name='register']
${Login_button_locator}   xpath://button[@name='login']

# --- Expected Results & Messages ---
${registration_error_message}    An account is already registered with your email address.