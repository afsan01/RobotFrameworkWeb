*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browse}   chrome
${url}  http://www.practiceselenium.com/practice-form.html


*** Test Cases ***
Handling DropDown and Lists
    open browser    ${url}  ${browser}
    maximize browser window

    #Drop down
    select from list by label   continents  Australia
    select from list by index   continents  6
    select from list by value   continents  Asia

    #List Box
    select from list by label   selenium_commands   Switch Commands
    select from list by label   selenium_commands   WebElement Commands
    sleep   5

    #Unselect
    unselect from list by label     selenium_commands   Switch Commands

*** Keywords ***
