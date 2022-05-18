*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
GetAlllinkTest
    open browser    https://www.amazon.com    chrome
    maximize browser window
    ${AllLink}=     get element count    xpath://a
    log to console    ${AllLink}

    @{LinkList}     create list
    FOR     ${i}    IN RANGE    1   ${AllLink}+1
    ${LinkText}=    get text    xpath:(//a)[${i}]
    log to console    ${LinkText}
    exit for loop if   ${i}==20
    END
    close browser