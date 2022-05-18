*** Settings ***

Library    SeleniumLibrary
Library    SeleniumLibrary

*** Test Cases ***

HandlingAlert
    open browser    https://testautomationpractice.blogspot.com/   chrome
    maximize browser window

    click element   //button[text()='Click Me']
    sleep    5
    alert should be present     Press a button!
    handle alert    accept
    sleep    5
    #handle alert    dismiss
    #handle alert    leave

    alert should be present     press a button!
    close browser