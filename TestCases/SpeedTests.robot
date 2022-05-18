*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
RegTest

    ${speed}=       get selenium speed
    log to console  ${speed}
    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window

    #sleep   3
    set selenium speed  3 second
    select radio button    Gender  M
    #select  radio button    Gender  M
    input text  name:FirstName  David
    input text  name:LastName   John
    input text  name:Email  abch@gmail.com
    input text  name:Password   davijohn
    input text  name:ConfirmPassword    davidjohn
    ${speed}=   get selenium speed
    log to console  ${speed}