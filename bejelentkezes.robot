*** Settings ***
Resource    common.robot

*** Test Cases ***
Bejelentkezés érvényes adatokkal
    Wait Until Element Is Visible    //button[contains(text(), 'Login')]    10s
    Click Button    //button[contains(text(), 'Login')]
    Wait Until Element Is Visible    //input[@type='email']    5s
    Input Text    //input[@type='email']    ${VALID_EMAIL}
    Input Text    //input[@type='password']    ${VALID_PASS}
    Click Button    //button[@type='submit']
    Wait Until Page Contains    Dashboard    10s
    Page Should Contain    Welcome

Bejelentkezés érvénytelen adatokkal
    Wait Until Element Is Visible    //button[contains(text(), 'Login')]    10s
    Click Button    //button[contains(text(), 'Login')]
    Wait Until Element Is Visible    //input[@type='email']    5s
    Input Text    //input[@type='email']    ${INVALID_EMAIL}
    Input Text    //input[@type='password']    ${INVALID_PASS}
    Click Button    //button[@type='submit']
    Wait Until Page Contains Element    //div[contains(@class, 'error')]    5s
    Page Should Contain    Invalid email or password

Üres mezők ellenőrzése
    Wait Until Element Is Visible    //button[contains(text(), 'Login')]    10s
    Click Button    //button[contains(text(), 'Login')]
    Wait Until Element Is Visible    //input[@type='email']    5s
    Input Text    //input[@type='email']    ${EMPTY}
    Input Text    //input[@type='password']    ${EMPTY}
    Click Button    //button[@type='submit']
    Wait Until Page Contains Element    //div[contains(@class, 'error')]    5s
    Page Should Contain    Email is required

Kijelentkezés
    Bejelentkezés érvényes adatokkal
    Wait Until Element Is Visible    //button[contains(text(), 'Logout')]    5s
    Click Button    //button[contains(text(), 'Logout')]
    Wait Until Page Contains    Space & Beyond    5s
    Page Should Contain Element    //button[contains(text(), 'Login')]


*** Keywords ***
Bejelentkezés érvényes adatokkal
    Wait Until Element Is Visible    //button[contains(text(), 'Login')]    10s
    Click Button    //button[contains(text(), 'Login')]
    Wait Until Element Is Visible    //input[@type='email']    5s
    Input Text    //input[@type='email']    ${VALID_EMAIL}
    Input Text    //input[@type='password']    ${VALID_PASS}
    Click Button    //button[@type='submit']
    Wait Until Page Contains    Dashboard    10s
    Page Should Contain    Welcome


