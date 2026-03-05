*** Keywords ***
Search Product
    [Arguments]    ${product_name}
    Browser.Fill Text    ${home_locator.txt_search_input}    ${product_name}
    Browser.Click   ${home_locator.btn_search}