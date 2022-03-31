*** Settings ***
Documentation   This is my test suite
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***
This Is A Sample Test Case
    [Documentation]  Google test
    [Tags]  regression

    Open Browser  https://www.google.com/   chrome
    close browser


*** Keywords ***
