*** Settings ***
Library  SeleniumLibrary
Resource   ../../Resources/CommonFunctionality.robot

Suite Setup   Start TestSuite
Suite Teardown  Finish TestSuite
Test Template   Invalid login scenarios
#Test Teardown   Finish TestCase



*** Variables ***
${loginbutton}  xpath://*[@id="__next"]/section/section/section[1]/div/div[2]/form/button[1]

*** Test Cases ***

Verify login fails - Blank UserEmail and Password    ${EMPTY}     ${EMPTY}    O email é obrigatório
Verify login fails - Wrong UserEmail and Password    barkyn@gmail.com     123456    Algo de errado aconteceu. Verifique o email ou palavra-passe por favor.
Verify login fails - Wrong UserEmail format and Password    barkyn@gmail     123456    Email inválido

*** Keywords ***
Invalid login scenarios
    [Arguments]  ${useremail}    ${password}     ${errormessage}
    set selenium speed  1s
    input text  id:email    ${useremail}
    input text  id:password  ${password}    clear=True
    click button    ${loginbutton}
    page should contain   ${errormessage}




