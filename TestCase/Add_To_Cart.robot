*** Settings ***
Resource    ./../Resources/import.robot

*** Test Cases ***
TC1 - Add 2 TV of Brand Sony To Cart with difference price
    [Setup]       [Common] - Begin web test
    [Teardown]    [Common] - Teardown actions
    
    Set Selenium Timeout    20s
    [Central] - Search for product
    [Central] - Add filter brand Sony from search result
    [Central] - Add random product to cart
    [Central] - Add filter price < 50000
    [Central] - Add 1st product after filter price