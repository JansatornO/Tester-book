*** Settings ***
Library    SeleniumLibrary
Resource    ${CURDIR}/keyword.robot


*** Variables ***
${url}                                https://abhigyank.github.io/To-Do-List/
${browser}                            gc
${locator_tap-additem}                xpath=/html/body/div/div/div[1]/a[1]
${locator_tap-task}                   xpath=/html/body/div/div/div[1]/a[2]
${locator_tap-cp}                     xpath=/html/body/div/div/div[1]/a[3]
${locator_text-name}                  id=new-task
${locator_btn-add}                    xpath=//*[@id="add-item"]/button
${locator_btn-text1}                  id=text-1
${locator_btn-delete-task}            xpath=//*[@id="1"]/span
${locator_btn-delete-cp}              xpath=//*[@id="1"]/span

