*** Settings ***
Library    Collections

*** Keywords ***
Login with standard user
    Open Browser    https://www.saucedemo.com/    browser=Chrome
    Input Text    id:user-name    standard_user
    Input Password    id:password    secret_sauce
    Click Button    id:login-button