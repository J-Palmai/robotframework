*** Settings ***
Resource    common.robot

*** Test Cases ***
Főoldal betöltése
    Title Should Be    Space & Beyond | Testim.io demo
    Page Should Contain    Space & Beyond
    Page Should Contain Element    //h1[contains(text(), 'Space Advisor')]

Menü elemek navigációja - Felnőttek száma
    Wait Until Element Is Visible    //div[contains(text(), 'Adults')]    5s
    Click Element    //div[contains(text(), 'Adults (18+)')]/following-sibling::div//button[text()='2']
    ${selected}=    Get Text    //div[contains(text(), 'Adults (18+)')]/following-sibling::div//span[contains(@class, 'selected')]
    Should Be Equal    ${selected}    2

Menü elemek navigációja - Gyerekek száma
    Wait Until Element Is Visible    //div[contains(text(), 'Children')]    5s
    Click Element    //div[contains(text(), 'Children (0-7)')]/following-sibling::div//button[text()='2']
    ${selected}=    Get Text    //div[contains(text(), 'Children (0-7)')]/following-sibling::div//span[contains(@class, 'selected')]
    Should Be Equal    ${selected}    2

Menü elemek navigációja - Bolygó színe
    Wait Until Element Is Visible    //div[contains(text(), 'Planet color')]    5s
    Click Element    //div[contains(text(), 'Planet color')]
    Click Element    //div[contains(text(), 'Red')]
    Wait Until Page Contains Element    //div[contains(@class, 'destination')][contains(@style, 'red')]    5s

Vissza gomb működése
    Click Element    //h5[text()='Madan']
    Wait Until Page Contains Element    //div[contains(@class, 'modal')]    5s
    Page Should Contain    Madan
    Click Element    //button[contains(text(), 'Close')]
    Wait Until Page Does Not Contain Element    //div[contains(@class, 'modal')]    5s