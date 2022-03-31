*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${env}  barkyn
&{url}  barkyn=https://www.barkyn.com/checkout/login    uat=hhtps://uat.demo.com    dev=http://dev.demo.com    ebay=https://www.ebay.com
@{browser}  chrome  firefox  edge
*** Keywords ***
Start TestSuite
    open browser  ${url.${env}}  ${browser}[0]
    maximize browser window

Finish TestSuite
    close browser

Finish TestCase
    clear element text  id:email
    clear element text  id:password