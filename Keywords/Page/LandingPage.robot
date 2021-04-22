*** Settings ***
Resource    ./../../Resources/import.robot

*** Keywords ***
[Landing Page] - Load page
    Go To    ${START_URL}

[Landing Page] - Verify page loaded
    Wait Until Element Is Visible        ${eImg_Logo}