*** Settings ***
Resource    common.robot
Test Setup    Open Browser And Load Page
Test Teardown    Close Browser

*** Test Cases ***
Termékek listázása
    ${count}=    Get Element Count    //h5
    Should Be True    ${count} >= 8    Nem jelenik meg legalább 8 termék

Termék szűrése szín alapján
    Click Element    //div[contains(text(), 'Planet color')]
    Click Element    //div[contains(text(), 'Blue')]
    Wait Until Page Contains Element    //div[contains(@class, 'destination')][contains(@style, 'blue')]    5s
    ${blue_count}=    Get Element Count    //div[contains(@class, 'destination')][contains(@style, 'blue')]
    Should Be True    ${blue_count} > 0

Termék keresése név alapján
    Click Element    //h5[text()='Madan']
    Wait Until Page Contains Element    //div[contains(@class, 'modal')]    5s
    Page Should Contain    Madan
    Page Should Contain    Praesent blandit
    Page Should Contain    $1183.46

Termék keresése másik név alapján
    Click Element    //h5[text()='Shenji']
    Wait Until Page Contains Element    //div[contains(@class, 'modal')]    5s
    Page Should Contain    Shenji
    Page Should Contain    Vestibulum quam sapien
    Page Should Contain    $1089.07

Termék részletek megtekintése
    Click Element    //h5[text()='Tongli']
    Wait Until Page Contains Element    //div[contains(@class, 'modal')]    5s
    Page Should Contain    Tongli
    Page Should Contain    Phasellus sit amet erat
    Page Should Contain    $192.64
    Element Should Be Visible    //img[contains(@src, 'tongli')]
    Click Element    //button[contains(text(), 'Close')]

Termék részletek - Flagstaff ellenőrzése
    Click Element    //h5[text()='Flagstaff']
    Wait Until Page Contains Element    //div[contains(@class, 'modal')]    5s
    Page Should Contain    Flagstaff
    Page Should Contain    Sed ante
    Page Should Contain    $346.68
    Click Element    //button[contains(text(), 'Close')]

Termék részletek - Sant Cugat Del Valles ellenőrzése
    Scroll Element Into View    //h5[text()='Sant Cugat Del Valles']
    Click Element    //h5[text()='Sant Cugat Del Valles']
    Wait Until Page Contains Element    //div[contains(@class, 'modal')]    5s
    Page Should Contain    Sant Cugat Del Valles
    Page Should Contain    Duis aliquam convallis nunc
    Page Should Contain    $1243.73
    Click Element    //button[contains(text(), 'Close')]

Termék részletek - Shaheying ellenőrzése
    Scroll Element Into View    //h5[text()='Shaheying']
    Click Element    //h5[text()='Shaheying']
    Wait Until Page Contains Element    //div[contains(@class, 'modal')]    5s
    Page Should Contain    Shaheying
    Page Should Contain    Integer tincidunt ante vel ipsum
    Page Should Contain    $215.38
    Click Element    //button[contains(text(), 'Close')]