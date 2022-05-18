*** Settings ***
Library  SeleninumLibrary

*** Test Cases ***
RegTest
    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window
    ${time}=    get selenium timeout
    log to console  ${time}

    wait until page contains    Register        #default [timeout]  5 second
    #sleep   3
    select from radio button    Gender  M
    input text  name:FirstName  David
    input text  name:LastName   John
    input text  name:Email  abch@gmail.com
    input text  name:Password   davijohn
    input text  name:ConfirmPassword    davidjohn

    close browser
