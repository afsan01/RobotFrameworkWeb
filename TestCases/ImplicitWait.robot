*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
RegTest
    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window
    ${implicitTime}=    get selenium implicit wait
    log to console  ${implicitTime}

    set selenium implicit wait  10 seconds
    log to console  ${implicitTime}

    select radio button    Gender  M
    input text  name:FirstName  David
    input text  name:LastName   John
    input text  name:Email  abch@gmail.com
    input text  name:Password   davijohn
    input text  name:ConfirmPassword    davidjohn

