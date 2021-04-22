*** Settings ***
Resource    ./../../Resources/import.robot

*** Keywords ***
[Search Result] - Verify Search Completed
    Wait Until Element Is Visible    ${eTxt_ShowSearchResult}

[Search Result] - Select filter brand name Sony
    [Documentation]    Select brand name Sony
    Wait Until Element Is Visible    ${eDropL_BrandName}
    Click Element    ${eDropL_BrandName}
    Click Element    ${eCBox_BrandNameSony}

[Search Result] - Get number return product result
    Wait Until Element Is Visible    ${eImg_1stProductList}
    ${count} =  Get Element Count    ${List_ProductReturn}
    #Log To Console    Count:${count}-1
    ${rand_Product} =    Evaluate    random.randint(0, ${count}-1)    random
    Log To Console    Random:${rand_Product}
    Set Global Variable    ${rand_Product}

[Search Result] - Add random Sony product to cart 1st
    [Documentation]    Add random product on search list to cart first time
    Wait Until Element Is Visible    xpath=(.//div[@data-index="${rand_Product}"]//img)[1]
    Mouse Over    xpath=(.//div[@data-index='${rand_Product}']//img)[1]
    Wait Until Element Is Enabled    xpath=.//div[@data-index='${rand_Product}']//div[contains(@id,'btn-viewFlip')]
    Click Element    xpath=.//div[@data-index='${rand_Product}']//div[contains(@id,'btn-viewFlip')]
    Wait Until Element Is Visible    xpath=.//div[@data-index='${rand_Product}']//div[contains(@id,'btn-addCart')]//span[text() = 'ADD TO BAG']
    Click Element    xpath=.//div[@data-index='${rand_Product}']//div[contains(@id,'btn-addCart')]/div
    Wait Until Element Is Visible    ${eTxt_Cart_Quan1}
    
[Search Result] - Add filter price < 50000
    [Documentation]    Add filter price of product < 50000
    Mouse Over    ${eDropl_PriceRange}
    Click Element    ${eDropl_PriceRange}
    Sleep    1s
    Drag And Drop By Offset    ${eIcon_MaxPrice}    -122    0
    Sleep    2s

[Search Result] - Add 1st product after filter price
    [Documentation]    Add 1st product on search list after filter price
    Wait Until Element Is Visible    ${eImg_1stProductList}
    Mouse Over    ${eImg_1stProductList}
    Wait Until Element Is Enabled    ${eBtn_1stProduct_Quickbuy}
    Click Element    ${eBtn_1stProduct_Quickbuy}
    Wait Until Element Is Visible    ${eBtn_1stProduct_AddToCart}
    Click Element    ${eBtn_1stProduct_AddToCart}
    Wait Until Element Is Visible    ${eTxt_Cart_Quan2}