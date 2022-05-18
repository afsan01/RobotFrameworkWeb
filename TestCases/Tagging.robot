*** Settings ***


*** Test Cases ***
TC1 User Registration Test
    [Tags]    sanity
    log to console    This is User Registeation Test
    log to console    User Registration test is over
TC2 LoginTest
    [Tags]    Sanity
    log to console    This is login test
    log to console    Login test is over
TC3 Change user Setting
    [Tags]    Regression
    log to console    This is changing user setting test
    log to console    Changing user Setting test is over
TC4 Logout Test
    [Tags]    Regression
    log to console    This is logout test
    log to console    Logout tst is over