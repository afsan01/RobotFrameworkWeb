*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
WebtableTest
    open browser    https://www.w3schools.com/html/html_tables.asp  chrome
    maximize browser window
    ${Rows}=    get element count    xpath://table/tbody/tr
    ${Column}=  get element count    xpath://table[@id='customers']/tbody/tr[1]/th
    log to console    ${Rows}
    log to console    ${Column}

    ${dataText}=    get text    xpath://table[@id='customers']/tbody/tr[5]/td[2]
    log to console    ${dataText}

    table column should contain    xpath://table[@id='customers']   2   Contact
    table row should contain    xpath://table[@id='customers']    4   Ernst Handel
    table cell should contain    xpath://table[@id='customers']     6   2   Yoshi Tannamuri
    table header should contain    //table[@id='customers']     Company


    close browser