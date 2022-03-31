*** Settings ***

*** Variables ***

#${VARIABLE_DEMO}  This is a GLOBAL variable

*** Test Cases ***
This is demo test 1
    ${variable_demo}   set variable  This is TESTCASE variable
    log  hello ${VARIABLE_DEMO}

This is demo test 2
    log  ${VARIABLE_DEMO}

This is demo test 3
    This is demo keyword

*** Keywords ***
This is demo keyword
    [Arguments]  ${variable_demo}=This is the keyword variable
    log  ${VARIABLE_DEMO}