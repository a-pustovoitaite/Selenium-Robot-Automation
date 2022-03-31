*** Settings ***

*** Test Cases ***
Argument demo keyword test
    argument demo keyword  Agne  Pustovoitaite


Argument demo keyword test2
    argument demo keyword  Miguel  Silva

*** Keywords ***
Argument demo keyword
    [Arguments]  ${name}  ${surname}
    log  ${name}
    log  ${surname}

