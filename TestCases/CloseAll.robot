*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
CloseallBrowser
    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window

    open browser    https://www.amazon.com/   chrome
    maximize browser window

   # close browser
   close all browsers