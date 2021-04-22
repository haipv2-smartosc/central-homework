*** Settings ***
Library    SeleniumLibrary

Resource    ./Locator/LandingPage.robot
Resource    ./Locator/TopNav.robot
Resource    ./Locator/SearchResults.robot

Resource    ./../Keywords/Central.robot
Resource    ./../Keywords/Common.robot
Resource    ./../Keywords/Page/LandingPage.robot
Resource    ./../Keywords/Page/SearchResults.robot
Resource    ./../Keywords/Page/TopNav.robot

Resource    ./Data/TestData.robot
Resource    ./Data/Url.robot