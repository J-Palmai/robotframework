*** Settings ***
Resource    common.robot
Test Setup    Open Browser And Load Page
Test Teardown    Close Browser

*** Test Cases ***
Termékek listázása
    ${count}=    Get Element Count    //h5
    Should Be True    ${count} >= 8    Kevesebb mint 8 termék jelenik meg

Madan termék részletei
    Click Element    //h5[text()='Madan']
    Wait Until Element Is Visible    //div[contains(@class,'modal')]    5s
    Page Should Contain    Madan
    Page Should Contain    Praesent blandit
    Page Should Contain    $1183.46
    Click Element    //button[contains(text(),'Close')]

Shenji termék részletei
    Click Element    //h5[text()='Shenji']
    Wait Until Element Is Visible    //div[contains(@class,'modal')]    5s
    Page Should Contain    Shenji
    Page Should Contain    Vestibulum quam sapien
    Page Should Contain    $1089.07
    Click Element    //button[contains(text(),'Close')]

Tongli termék részletei
    Click Element    //h5[text()='Tongli']
    Wait Until Element Is Visible    //div[contains(@class,'modal')]    5s
    Page Should Contain    Tongli
    Page Should Contain    Phasellus sit amet erat
    Page Should Contain    $192.64
    Click Element    //button[contains(text(),'Close')]

Flagstaff termék részletei
    Click Element    //h5[text()='Flagstaff']
    Wait Until Element Is Visible    //div[contains(@class,'modal')]    5s
    Page Should Contain    Flagstaff
    Page Should Contain    Sed ante
    Page Should Contain    $346.68
    Click Element    //button[contains(text(),'Close')]

Sant Cugat Del Valles termék részletei
    Scroll Element Into View    //h5[text()='Sant Cugat Del Valles']
    Click Element    //h5[text()='Sant Cugat Del Valles']
    Wait Until Element Is Visible    //div[contains(@class,'modal')]    5s
    Page Should Contain    Sant Cugat Del Valles
    Page Should Contain    Duis aliquam convallis nunc
    Page Should Contain    $1243.73
    Click Element    //button[contains(text(),'Close')]

Shaheying termék részletei
    Scroll Element Into View    //h5[text()='Shaheying']
    Click Element    //h5[text()='Shaheying']
    Wait Until Element Is Visible    //div[contains(@class,'modal')]    5s
    Page Should Contain    Shaheying
    Page Should Contain    Integer tincidunt ante vel ipsum
    Page Should Contain    $215.38
    Click Element    //button[contains(text(),'Close')]

Tayabamba termék részletei
    Scroll Element Into View    //h5[text()='Tayabamba']
    Click Element    //h5[text()='Tayabamba']
    Wait Until Element Is Visible    //div[contains(@class,'modal')]    5s
    Page Should Contain    Tayabamba
    Page Should Contain    $418.31
    Click Element    //button[contains(text(),'Close')]

Babahoyo termék részletei
    Scroll Element Into View    //h5[text()='Babahoyo']
    Click Element    //h5[text()='Babahoyo']
    Wait Until Element Is Visible    //div[contains(@class,'modal')]    5s
    Page Should Contain    Babahoyo
    Page Should Contain    $770.76
    Click Element    //button[contains(text(),'Close')]

Cuozhou termék részletei
    Scroll Element Into View    //h5[text()='Cuozhou']
    Click Element    //h5[text()='Cuozhou']
    Wait Until Element Is Visible    //div[contains(@class,'modal')]    5s
    Page Should Contain    Cuozhou
    Page Should Contain    $1756.71
    Click Element    //button[contains(text(),'Close')]