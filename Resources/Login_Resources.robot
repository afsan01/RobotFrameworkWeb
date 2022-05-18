*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LoginURL}=    https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${Browser}=     chrome


*** Keywords ***
Open my Browser
    open browser    ${LoginURL}    ${Browser}
    maximize browser window

Close Browsers
    close all browsers

Open Login Page
    go to    ${LoginURL}

Input userName
    [Arguments]    ${username}
    input text    id:Email      ${username}

Input Password
    [Arguments]    ${password}
    input text    id:Password       ${password}

Click Login button
    click element    xpath://button[@class='button-1 login-button']

Click logout link
    click link    loout

Error message should be Visible
    page should contain    Login was unsuccessful

Valid Login Verify
    page should contain     Dashboard

