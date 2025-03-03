*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
Navigate to login page
    [Arguments]                          ${url}
    Go To                                ${url}

Verify page loaded
    [Arguments]                         ${locator}
    Wait Until Element Is Visible       ${locator}

Click button
    [Arguments]                         ${button}
    Click Element                       ${button}

Enter credential
    [Arguments]                          ${credential}     
    ...                                  ${locator}
    Input Text                           ${locator}        
    ...                                  ${credential}
    
Validate text displayed
    [Arguments]                          ${expected_text}
    Page Should Contain                  ${expected_text}    

Validate text displayed 2
    [Arguments]                          ${locator}     
    ...                                  ${expected_text}
    Wait Until Page Contains Element     ${locator}
    ${actual_text}=                      Get Text    
    ...                                  ${locator}
    Should Be Equal                      ${actual_text}    
    ...                                  ${expected_text}