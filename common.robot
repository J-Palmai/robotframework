*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections

*** Variables ***
${URL}           https://demo.testim.io
${BROWSER}       chrome
${VALID_EMAIL}   teszt@email.com
${VALID_PASS}    teszt123
${INVALID_EMAIL}    invalid@email.com
${INVALID_PASS}     invalid123

*** Keywords ***
Open Browser And Load Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains    Space & Beyond    10s