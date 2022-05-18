*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Login_Resources.robot
Suite Setup    Open my Browser
Suite Teardown    Close Browsers
Test Template   Invalid login

*** Test Cases ***      username        password
Right user empty pass     admin@yourstore.com     ${EMPTY}
Right user wrong pass     admin@yourstore.com     xyz
Wrong user right pass     admi@yourstore.com     admin
Wrong user empty pass     admi@yourstore.com     ${EMPTY}
Wrong user wrong pass     admi@yourstore.com     xyz


*** Keywords ***
Invalid login
    [Arguments]    ${usernaem}      ${password}
    Input userName      ${usernaem}
    Input Password       ${password}
    Click Login button
    Error message should be Visible