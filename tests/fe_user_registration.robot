*** Settings ***
Resource               ../source/asenso_app.robot
Resource               ../source/common.robot
Resource               ../data/variables/public_variables.robot
Resource               ../data/variables/locators.robot
Test Setup             Main Web Setup    ${BROWSER}
Test Teardown          Main Web Teardown
Library                SeleniumLibrary

*** Test Cases ***
Test Case 1: Validate `Tell us about yourself` text displayed
    [Documentation]    Validate that the user should be navigated to the registration page after clicking the 'Sign Up' button.
    [Tags]             registration    
    ...                UR-TC-001
    asenso_app.Navigate to the login page       ${MAIN_URL}        
    ...                                         ${login_form}
    asenso_app.Click the signup button          ${signup_btn}
    asenso_app.Validate text displayed          Tell us about yourself

Test Case 2: PH Citizenship selection
    [Documentation]    Validate that the user can successfully select PH in citizenship
    [Tags]             registration    
    ...                UR-TC-003
    asenso_app.Navigate to the login page       ${MAIN_URL}        
    ...                                         ${login_form}
    asenso_app.Click the signup button          ${signup_btn}
    asenso_app.Click the Citizenship dropdown   ${citizenship_dropdown}
    asenso_app.Select Citizenship               ${citizenship_ph}
    asenso_app.Validate text displayed          PH

Test Case 3: US Citizenship selection
    [Documentation]    Validate that the user can successfully select PH in citizenship
    [Tags]             registration        
    ...                UR-TC-004
    asenso_app.Navigate to the login page       ${MAIN_URL}        
    ...                                         ${login_form}
    asenso_app.Click the signup button          ${signup_btn}
    asenso_app.Click the Citizenship dropdown   ${citizenship_dropdown}
    asenso_app.Select Citizenship               ${citizenship_us}
    asenso_app.Validate text displayed          US

Test Case 4: Validate Inputed First Name
    [Documentation]    Validate that the user can input their first name
    [Tags]             registration    
    ...                UR-TC-007
    asenso_app.Navigate to the login page       ${MAIN_URL}        
    ...                                         ${login_form}
    asenso_app.Click the signup button          ${signup_btn}
    asenso_app.Enter                            ${first_name}    
    ...                                         R,ed-en,
    asenso_app.Text should be displayed         ${first_name}
    ...                                         R,ed-en,

Test Case 5: Validate Inputed Middle Name
    [Documentation]    Validate that the user can input their middle name
    [Tags]             registration
    ...                UR-TC-008
    asenso_app.Navigate to the login page       ${MAIN_URL}
    ...                                         ${login_form}
    asenso_app.Click the signup button          ${signup_btn}
    asenso_app.Enter                            ${middle_name}
    ...                                         C.
    asenso_app.Text should be displayed         ${middle_name}
    ...                                         C.

Test Case 6.Validate Inputed Last Name
    [Documentation]    Validate that the user can input their last name
    [Tags]             registration
    ...                UR-TC-009
    asenso_app.Navigate to the login page       ${MAIN_URL}
    ...                                         ${login_form}
    asenso_app.Click the signup button          ${signup_btn}
    asenso_app.Enter                            ${last_name}
    ...                                         Longcop
    asenso_app.Text should be displayed         ${last_name}
    ...                                         Longcop

Test Case 7: Validate Inputed Suffix
    [Documentation]    Validate that the user can input their suffix
    [Tags]             registration
    ...                UR-TC-010
    asenso_app.Navigate to the login page       ${MAIN_URL}
    ...                                         ${login_form}
    asenso_app.Click the signup button          ${signup_btn}
    asenso_app.Enter                            ${suffix}
    ...                                         Ja-i,mes.
    asenso_app.Text should be displayed         ${suffix}
    ...                                         Ja-i,mes.

Test Case 8: Validate Inputed Email
    [Documentation]    Validate that the user can input their email
    [Tags]             registration
    ...                UR-TC-011
    asenso_app.Navigate to the login page       ${MAIN_URL}
    ...                                         ${login_form}
    asenso_app.Click the signup button          ${signup_btn}
    asenso_app.Enter                            ${email}
    ...                                         rlongcop@agsx.net

Test Case 9: Validate Consent Checkbox
    [Documentation]    Validate that the user can succesfully tick the consent checkbox
    [Tags]             registration
    ...                UR-TC-012
    asenso_app.Navigate to the login page       ${MAIN_URL}
    ...                                         ${login_form}
    asenso_app.Click the signup button          ${signup_btn}
    asenso_app.Click the consent checkbox       ${consent}
    asenso_app.Click the Continue button        ${signup_submit}
    asenso_app.Validate text displayed          We've sent an OTP

Test Case 10: Validate User Registration
    [Documentation]    Validate that the user can successfully submit the personal information details 
    [Tags]             registration
    ...                UR-TC-013
    asenso_app.Navigate to the login page       ${MAIN_URL}
    ...                                         ${login_form}
    asenso_app.Click the signup button          ${signup_btn}
    asenso_app.Click the Citizenship dropdown   ${citizenship_dropdown}
    asenso_app.Select Citizenship               ${citizenship_ph}
    asenso_app.Enter                            ${first_name}    
    ...                                         Reden
    asenso_app.Enter                            ${middle_name}    
    ...                                         Capoquian
    asenso_app.Enter                            ${last_name}    
    ...                                         Longcop
    asenso_app.Enter                            ${suffix}    
    ...                                         James
    asenso_app.Enter                            ${phone_number}    
    ...                                         1231234123
    asenso_app.Click the Citizenship dropdown   ${citizenship_dropdown}
    asenso_app.Select Citizenship               ${citizenship_ph}
    asenso_app.Click the consent checkbox       ${consent}
    asenso_app.Click the Continue button        ${signup_submit}
    asenso_app.Validate text displayed          We've sent an OTP