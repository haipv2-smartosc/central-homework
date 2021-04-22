*** Settings ***
Resource    ./../Resources/import.robot

*** Keywords ***
[Central] - Search for product
    [Landing Page] - Load page
    [Landing Page] - Verify page loaded
    [TopNav] - Search for product

[Central] - Add filter brand Sony from search result
    [Search Result] - Verify Search Completed
    [Search Result] - Select filter brand name Sony
    [Search Result] - Get number return product result

[Central] - Add random product to cart
    [Search Result] - Add random Sony product to cart 1st

[Central] - Add filter price < 50000
    [Search Result] - Add filter price < 50000

[Central] - Add 1st product after filter price
    [Search Result] - Add 1st product after filter price