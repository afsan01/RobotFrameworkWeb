*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  http://www.facebook.com/
${browser}  chrome

*** keywords ***
launchBrowser
    [Arguments]    ${url}    ${browser}
    open browser    ${url}  ${browser}
    maximize browser window
    ${title}=   get title
    [Return]    ${title}