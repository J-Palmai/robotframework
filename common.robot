*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           https://demo.testim.io
${BROWSER}       chrome

*** Keywords ***
Open Browser And Load Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains    Space & Beyond    10s