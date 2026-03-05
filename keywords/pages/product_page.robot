*** Keywords ***
Verify Product keyword by product type
    [Arguments]    ${product_type}
    ${product_keyword}=    Get Text    ${product_locator.lbl_product_keyword}
    Should Contain    ${product_keyword}    ${product_type}

Select product by product name
    [Arguments]    ${product_name}
    ${product_locator.lbl_product_name}=    Replace String    ${product_locator.lbl_product_name}    ***product_name***    ${product_name}
    Browser.Click    ${product_locator.lbl_product_name}
