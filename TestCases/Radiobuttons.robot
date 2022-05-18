*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing Radio Button and Check Boxes
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  2second

    select radio button     sex  Female
    select radio button     exp  5

    select checkbox    BlackTea
    select checkbox     RedTea

    unselect checkbox   BlackTea



*** Keywords ***
