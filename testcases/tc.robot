*** Settings ***
Resource    ${CURDIR}/../resources/import.robot

*** Test Cases ***
# IKEA_001
#     common.Open Browser

# IKEA_002
#     common.Open Browser

# IKEA_003
#     common.Open Browser

IKEA_004
    common.Open Browser
    home_page.Search Product    ${IKEA_004.product_type}
    product_page.Verify Product keyword by product type    ${IKEA_004.product_type}
    product_page.Select product by product name    ${IKEA_004.product_name}




# IKEA_005
#     common.Open Browser