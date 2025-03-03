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
    [Arguments]                          ${locator}     
    ...                                  ${text}
    Input Text                           ${locator}        
    ...                                  ${text}
    
Validate value displayed
    [Arguments]                          ${locator}
    ...                                  ${expected_text}
    ${value}    Get Element Attribute    ${locator}    value
    Should Be Equal As Strings    ${value}    ${expected_text}

Validate text displayed
    [Arguments]                          ${expected_text}
    Wait Until Page Contains             ${expected_text}
    Page Should Contain                  ${expected_text}

Click Signup link
    Click Link    Sign Up