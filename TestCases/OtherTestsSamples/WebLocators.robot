*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${cookie_button_accept}  CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll-

*** Test Cases ***
TC to demonstrate web locators in ROBOT FW
    [Documentation]  This is a sample to demonstrate web locators in Robot FW: checkboxes, radio buttons, etc

    open browser  https://www.sugarcrm.com/uk/request-demo/   chrome
    maximize browser window
    scroll element into view  xpath://*[@id="field1"]/div/input
    mouse down  //*[@id="field25"]/div/input
    ${passed}  run keyword and return status  Cookie window appears
    run keyword if  ${passed}  Click on Cookie accept button
    ...  else   Log message
    close browser

*** Keywords ***
Cookie window appears
    page should contain button  ${cookie_button_accept}

Log message
    log   "There is no such a button"


Click on Cookie accept button
    click button  ${cookie_button_accept}



