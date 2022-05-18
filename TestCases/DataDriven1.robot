*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Login_Resources.robot
Library    DataDriver   ../TestData/LoginData.xlsx      sheet_name=Sheet1

Suite Setup    Open my Browser
Suite Teardown    Close Browsers
Test Template    Invalid login
Library    SeleniumLibrary
Resource    ../Resources/Login_Resources.robot
Library    DataDriver   ../TestData/LoginData.xlsx

Suite Setup    Open my Browser
Suite Teardown    Close Browsers
Test Template    Invalid login

*** Test Cases ***
LoginTestwithCSV using ${username} and ${password}


*** Keywords ***
Invalid login
    [Arguments]    ${username}      ${password}
    input username    ${username}
    input password    ${password}
    click login button
    Error message should be Visible