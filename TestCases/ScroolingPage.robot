*** Settings ***
Library     SeleniumLibrary
Library    SeleniumLibrary

*** Test Cases ***
ScrrolingPateTest
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    maximize browser window
   # execute javascript    window.scrollTo(0,2500)
    # 0 is Vertical and 2500 is Horizental
   # scroll element into view    xpath://*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[86]/td[1]/img
   execute javascript   window.scrollTo(0,document.body.scrollHeight)    #End of the page
   sleep    5
   execute javascript   window.scrollTo(0,-document.body.scrollHeight)  #Back to the startingpoint