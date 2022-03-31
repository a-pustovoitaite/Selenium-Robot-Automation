*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
Login Test
    open browser  ${url}    ${browser}
    login to application
    close browser

*** Keywords ***
Login To Application
    click link  xpath://a[contains(text(),'Log in')]
    input text  id:Email  aagnyte@gmail.com
    input text  id:Password  Test123@
    click element  xpath://button[contains(text(),'Log in')]