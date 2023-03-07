*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}                        https://www.calculator.net/
${browser}                    gc
${locator_text-search}        id=sciOutPut
${locator_btn-plus}           xpath=//*[@id="sciout"]/tbody/tr[2]/td[2]/div/div[1]/span[4]
${locator_btn-number1}        xpath=//*[@id="sciout"]/tbody/tr[2]/td[2]/div/div[3]/span[1]
${locator_btn-number0}        xpath=//*[@id="sciout"]/tbody/tr[2]/td[2]/div/div[4]/span[1]
${locator_btn-number5}        xpath=//*[@id="sciout"]/tbody/tr[2]/td[2]/div/div[2]/span[2]




*** Keywords ***
Test Calculator 
    Open Browser                     ${url}        ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible    ${locator_text-search}    10s
    Click Element                    ${locator_btn-number1}
    Click Element                    ${locator_btn-number0}
    Click Element                    ${locator_btn-plus}
    Click Element                    ${locator_btn-number5}
    Sleep    5s
    ${text}=    Get Text             ${locator_text-search}
    Should Be Equal As Numbers       ${text}    15    
    Close Browser


*** Test Cases ***
TEST UI
    Test Calculator
    