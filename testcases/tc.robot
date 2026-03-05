*** Settings ***
Resource    ${CURDIR}/../resources/import.robot

*** Test Cases ***
<<<<<<< Updated upstream
Test Case 1
    Open Browser
=======
# IKEA_001
#     common.Open Browser

# IKEA_002
#     common.Open Browser

# IKEA_003
#     common.Open Browser

IKEA_004
    common.Open Browser
    common.Accept Cookies
    home_page.Search Product    ${IKEA_004.product_type}
    product_page.Verify Product keyword by product type    ${IKEA_004.product_type}
    product_page.Select product by product name    ${IKEA_004.product_name}
    product_detail_page.Get product name from product detail page
    product_detail_page.Get product detail from product detail page
    product_detail_page.Add product to cart by quantity    ${IKEA_004.quantity}
    debug


# IKEA_005
#     common.Open Browser
>>>>>>> Stashed changes
