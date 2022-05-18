*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    open browser    ${url}    ${browser}
    loginToApplication
    #open browser    https://demo.nopcommerce.com/   chrome
#    click   link    xpath://a[@class='ico-Login']
#    input text  id:Email    mahbub@gmail.com
#    input text  id:Password     test123
#    click element   xpath://input[@class='button-1 Login-button]
    close browser


*** Keywords ***
loginToApplication
    click link    xpath://a[@class='ico-Login']
    input text  id:Email    mahbub@gmail.com
    input text  id:Password     test123
    click element   xpath://input[@class='button-1 Login-button]