*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem
Library           Collections

*** Keywords ***
Main Web Setup
    [Documentation]        Main web setup
    [Arguments]            ${browser}
    Empty Directory        logs/screenshots

    Set Screenshot Directory    logs/screenshots
    Open Browser            about:blank    ${browser}
    Maximize Browser Window

Main Web Teardown
    [Documentation]        Main web teardown
    Capture Page Screenshot
    Close All Browsers