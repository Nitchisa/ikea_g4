*** Keywords ***
Get product name from product detail page
    ${product_name}=    Get Text    ${product_detail_locator.lbl_product_name}
    RETURN    ${product_name}

Get product detail from product detail page
    ${product_detail}=    Get Text    ${product_detail_locator.lbl_product_detail}
    RETURN    ${product_detail}

Add product to cart by quantity
    [Arguments]    ${qty}
    Browser.Input Text    ${product_detail_locator.lbl_product_qty}    ${qty}