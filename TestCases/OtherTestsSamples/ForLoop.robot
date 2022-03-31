*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
Test to find elements in Google Search
    open browser    https://www.google.com/  chrome
    wait until page contains  L2AGLb
    click button  L2AGLb
    page should contain element  name:q
    click element  name:q
    input text  name:q  cat
    press keys  name:q  ENTER

    @{results_on_page}  get webelements  //*[@id="rso"]/div
    FOR  ${web_element}  IN   @{results_on_page}
        ${text}     get text  ${web_element}

    END



*** Keywords ***
