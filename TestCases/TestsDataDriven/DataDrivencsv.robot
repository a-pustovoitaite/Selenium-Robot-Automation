*** Settings ***
Library  SeleniumLibrary
Resource   ../../Resources/CommonFunctionality.robot
Library  DataDriver   ../../TestData/TestData.csv
Library

Suite Setup   Start TestSuite
Suite Teardown  Finish TestSuite
Test Template   Invalid login scenarios
#Test Teardown   Finish TestCase



*** Variables ***
${loginbutton}  xpath://*[@id="__next"]/section/section/section[1]/div/div[2]/form/button[1]

*** Test Cases ***

Verify login fails with invalid credits    ${useremail}    ${password}     ${errormessage}


*** Keywords ***
Invalid login scenarios
    [Arguments]  ${useremail}    ${password}     ${errormessage}
    set selenium speed  1s
    input text  id:email    ${useremail}    clear=True
    input text  id:password  ${password}    clear=True
    click button    ${loginbutton}
    page should contain   ${errormessage}




