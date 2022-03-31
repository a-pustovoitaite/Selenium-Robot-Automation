*** Settings ***
Library  SeleniumLibrary
Resource  ./HeaderPage.robot

*** Variables ***
${search_result}    resultados para

*** Keywords ***
Verify Search results
    [Arguments]   ${search_text}
    page should contain   ${search_result}  ${search_text}
