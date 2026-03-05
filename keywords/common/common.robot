*** Keywords ***
Open Browser
    [Arguments]
    Browser.New browser     chromium    ${FALSE}
    Browser.New context    
    Browser.New page        https://www.ikea.com/th
