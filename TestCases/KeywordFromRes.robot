*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

#*** Variables ***
#${url}  http://www.facebook.com
#${browser}  chrome

*** Test Cases ***
TC1
     ${Pagetitle}=   launchBrowser   ${url}    ${browser}
     log to console     ${Pagetitle}
     log    ${Pagetitle}

    maximize browser window
    input text    id:email      mahbub@gmail.com
    input text    id:pass       test123
    close browser