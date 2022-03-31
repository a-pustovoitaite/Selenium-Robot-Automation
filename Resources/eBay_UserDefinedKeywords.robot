*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Results
    input text  css:#gh-ac   mobile
    click button  id:gh-btn
    wait until page contains  resultados para mobile

Filter results by condition
    sleep  0.5s
