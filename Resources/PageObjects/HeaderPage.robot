*** Settings ***
Library  SeleniumLibrary
Variables  ../WebElements.py

*** Keywords ***
Input Search Text and Search
    [Arguments]  ${search_text}
    input text  ${HomePageSearchTextBox}  ${search_text}
    click button  ${HomePageSearchButton}
