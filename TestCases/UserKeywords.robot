*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}  http://www.facebook.com/
${browser}  chrome

*** Test Cases ***
TC1
    launchBrowser
    input text    id:email      mahbub@gmail.com
    input text    id:pass       test123

*** Keywords ***
#user defind keywords without parameters
launchBrowser
    open browser    ${url}  ${browser}
    maximize browser window

