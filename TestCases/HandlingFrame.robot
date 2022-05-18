*** Settings ***
Library  SeleniumLibrary
Library    SeleniumLibrary

*** Test Cases ***
TestingFrame
    open browser    https://seleniumhq.github.io/selenium/docs/api/java/index   chrome
    maximize browser window

   select frame     packageListFrame
   click link   org.openqa.selenium
   unselect frame

   sleep    3
   select frame     packageFrame
   click link   WebDriver
   unselect frame

   sleep    3
   select frame     classFrame
   click link   Help
   unselect frame
   close browser