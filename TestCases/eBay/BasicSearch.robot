*** Settings ***
Documentation  Basic search functionality
Resource  ../../Resources/PageObjects/HeaderPage.robot
Resource  ../../Resources/PageObjects/SearchResultsPage.robot
Resource  ../../Resources/CommonFunctionality.robot

Test Setup  Start TestCase
Test Teardown  Finish TestCase
*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case varifies the basic search
    [Tags]  Functional

    Input Search Text and Search  mobile
    Verify Search results   mobile





