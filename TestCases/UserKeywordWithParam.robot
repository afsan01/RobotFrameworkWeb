*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  http://www.facebook.com
${browser}  chrome


*** Test Cases ***
TC1
     ${Pagetitle}=  launchBrowser   ${url}    ${browser}
     log to console     ${Pagetitle}
     log    ${Pagetitle}

    maximize browser window
    input text    id:email      mahbub@gmail.com
    input text    id:pass       test123

*** Keywords ***
#user defind keywords with parameters
launchBrowser
    [Arguments]    ${appurl}    ${appbrowser}
    open browser    ${appurl}  ${appbrowser}
    maximize browser window
    ${title}=   get title
    [Return]    ${title}