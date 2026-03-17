*** Settings ***
Library     SeleniumLibrary
Variables    ../Resources/config.yaml

*** Keywords ***
Open Website
    Open Browser    ${Url}  ${Browser}
    Maximize Browser Window

Wait until element is ready then click element
    [Arguments]     ${locator}
    Wait Until Element Is Enabled   ${locator}   3s
    Scroll Element Into View     ${locator}
    Click Element    ${locator}

Wait until element is ready then scroll and input text
    [Arguments]     ${locator}   ${text}
    Wait Until Element Is Enabled   ${locator}   3s
    Scroll Element Into View     ${locator}
    Input Text    ${locator}     ${text}

Wait until page contains element then verify text
    [Arguments]    ${expected_text}    ${timeout}=3s
    Wait Until Page Contains    ${expected_text}    ${timeout}
    Page Should Contain         ${expected_text}