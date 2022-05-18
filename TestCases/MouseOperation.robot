*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MouseAction
    #Right click
    open browser    http://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    maximize browser window
    open context menu    xpath:/html/body/div/section/div/div/div/p/span

    sleep    5

    #Double click
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://button[contains(text(),'Copy Text')]
    sleep    3

    go to    http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    drag and drop    id:box6    id:box106
    sleep    5
    drag and drop    id:box3    id:box103
    close browser