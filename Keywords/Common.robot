*** Settings ***
Resource    ./../Resources/import.robot

*** Keywords ***
Begin web test
    Open Browser        about:blank        ${BROWSER}
    Delete All Cookies
    Set Window Size    1920    1080

Teardown actions
    Close Browser