*** Settings ***
Resource          ./../../Resources/import.robot

*** Keywords ***
[TopNav] - Search for product
    Wait Until Element Is Visible    ${eInp_Search}
    Click Element                    ${eInp_Search}
    Input Text    ${eInp_Search}    ${TXT_SEARCH}
    Press Keys    ${eInp_Search}    ENTER
