*** Settings ***

Library    Selenium2Library
Library    Collections
Resource    login.robot

*** Test Cases ***
Sort products Z to A
    Login with standard user
    Click Element    class:product_sort_container
    Click Element    //*[@id="header_container"]/div[2]/div/span/select/option[2]
    ${product_names}=    Get all products
    Verify Z to A sorting    ${product_names}


*** Keywords ***
Get all products
    ${products}=    Create List
    @{product_elements}=    Get WebElements    class:inventory_item_name
    FOR    ${element}    IN    @{product_elements}
        ${product_name}=    Get Text    ${element}
        Append To List    ${products}    ${product_name}
    END
    RETURN    @{products}


Verify Z to A sorting
    [Arguments]    ${product_names}
    ${length}=    Get Length    ${product_names}
    FOR    ${i}    IN RANGE    0    ${length}-1
        ${current}=    Get From List    ${product_names}    ${i}
        ${next}=       Get From List    ${product_names}    ${i+1}
        Should Be True    ${current} >= ${next}    Product not in Z to A order ${current} < ${next}
    END
        




