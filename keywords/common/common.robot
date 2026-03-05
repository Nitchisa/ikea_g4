*** Keywords ***
Open Browser
    [Arguments]
    Browser.New browser     chromium    ${FALSE}
    Browser.New context    
    Browser.New page        https://www.ikea.com/th

Open Browser Dynamic URL
    ${BASE_URL}=    Set Variable If    '${LANG}' == 'en'    https://www.ikea.com/th/en/    https://www.ikea.com/th/th/
    Set Suite Variable    ${BASE_URL} 
    New Browser    chromium    headless=${FALSE}
    New Page       ${BASE_URL}