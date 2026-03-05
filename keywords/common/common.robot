*** Keywords ***
Open Browser
    [Arguments]
    Browser.New browser     chromium    ${FALSE}
    Browser.New context    
    Browser.New page        https://www.ikea.com/th

Accept Cookies
    Browser.Wait For Elements State     id=onetrust-accept-btn-handler    visible
    Browser.Click                       id=onetrust-accept-btn-handler
