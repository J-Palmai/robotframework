*** Settings ***
Resource    common.robot
Test Setup    Open Browser And Load Page
Test Teardown    Close Browser

*** Test Cases ***
Főoldal betöltése
    Title Should Be    Space & Beyond | Testim.io demo
    Page Should Contain    Space & Beyond
    Page Should Contain    Space Advisor

Felnőttek számának módosítása
    Click Element    //div[contains(text(),'Adults')]/following-sibling::div//button[text()='2']
    Sleep    500ms
    Element Should Contain    //div[contains(text(),'Adults')]/following-sibling::div//span    2

Gyerekek számának módosítása
    Click Element    //div[contains(text(),'Children')]/following-sibling::div//button[text()='2']
    Sleep    500ms
    Element Should Contain    //div[contains(text(),'Children')]/following-sibling::div//span    2

Bolygó színének kiválasztása
    Click Element    //div[contains(text(),'Planet color')]
    Click Element    //div[contains(text(),'Red')]
    Sleep    500ms

Termék részletek bezárása
    Click Element    //h5[text()='Madan']
    Wait Until Element Is Visible    //div[contains(@class,'modal')]    5s
    Page Should Contain    Madan
    Page Should Contain    $1183.46
    Click Element    //button[contains(text(),'Close')]
    Wait Until Element Is Not Visible    //div[contains(@class,'modal')]    5s