*** Settings ***
Library    SeleniumLibrary
Library    Telnet
Library    DateTime
Resource    ${CURDIR}/variables.robot




*** Keywords ***
Open Web browser
    [Arguments]                     ${link}                         ${browsername}
    Open Browser                    ${link}                         ${browsername}
    Maximize Browser Window

Input data for requirement
    Wait Until Element Is Visible        ${locator_text-name}    10s
    Input Text                           ${locator_text-name}            TEST1
    Click Element                        ${locator_btn-add}
    Click Element                        ${locator_tap-task}
    Wait Until Element Is Visible        ${locator_btn-text1}    10s
    ${text}=    Get Text    ${locator_btn-text1}
    Should Be Equal As Strings    ${text}    TEST1
    Click Element                        ${locator_btn-text1}
    Click Element                        ${locator_tap-cp}
    Wait Until Element Is Visible        ${locator_btn-delete-task}    10s
    Click Element                        ${locator_btn-delete-task}
    Wait Until Element Is Not Visible    ${locator_btn-delete-task}    10s



Input data delete task                        
    Wait Until Element Is Visible      ${locator_text-name}            10s
    Input Text                         ${locator_text-name}            TEST1
    Click Element                      ${locator_btn-add}
    Click Element                      ${locator_tap-task}
    Wait Until Element Is Visible      ${locator_btn-text1}            10s
    ${text}=    Get Text    ${locator_btn-text1}
    Should Be Equal As Strings    ${text}    TEST1
    Click Element                      ${locator_btn-delete-task}
    Wait Until Element Is Not Visible  ${locator_btn-delete-task}      10s


Input data delete Completed
    Wait Until Element Is Visible      ${locator_text-name}            10s
    Input Text                         ${locator_text-name}            TEST1
    Click Element                      ${locator_btn-add}
    Click Element                      ${locator_tap-task}
    Wait Until Element Is Visible      ${locator_btn-text1}            10s
    ${text}=    Get Text    ${locator_btn-text1}
    Should Be Equal As Strings    ${text}    TEST1
    Click Element                      ${locator_btn-text1}
    Click Element                      ${locator_tap-cp}
    Wait Until Element Is Visible      ${locator_btn-delete-cp}    10s
    Click Element                      ${locator_btn-delete-cp}
    Wait Until Element Is Not Visible  ${locator_btn-delete-cp}    10s
    


    
       





    

