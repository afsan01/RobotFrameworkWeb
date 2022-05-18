*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
LoginTest
    open browser    https://opensource-demo.orangehrmlive.com/  chrome
    maximize browser window
    input text    id:txtUsername    Admin
    input text    id:txtPassword    admin123

    #capture element screenshot    xpath://*[@id="divLogo"]/img  C:/Users/User/PycharmProjects/Automation1/logo.png
    #capture page screenshot    C:/Users/User/PycharmProjects/Automation1/LotinTest.png
    capture element screenshot    logo.png
    capture page screenshot    LoginTest.png

    close browser