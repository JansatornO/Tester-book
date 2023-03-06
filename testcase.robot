*** Settings ***
Library    SeleniumLibrary
Resource    ${CURDIR}/keyword.robot
Resource    ${CURDIR}/variables.robot
Suite Setup    Open Web browser    ${url}    ${browser}
Suite Teardown    Close Browser


*** Test Cases ***
Verify input login success
    [Documentation]    ใช้สำหรับทดสอบจนจบการทำงาน
    [Tags]    Off
    Input data for requirement

Verify Input Data User has been locked
    [Documentation]    ใช้ทดสอบการลบงานใน task
    [Tags]    Off
    Input data delete task

    
Verify Check Completed 
    [Documentation]    ใช้สำหรับทดสอบลบข้อมูลใน Completed
    [Tags]    Run
    Input data delete Completed
    



    

    


