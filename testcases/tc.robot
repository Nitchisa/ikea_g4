*** Settings ***
Resource    ${CURDIR}/../resources/import.robot

*** Test Cases ***
IKEA_001: Language ${LANG}
    [Documentation]    ${LANG} IKea Page
    [Setup]    Open Browser Dynamic URL
    Login To System      email=${IKEA001.email}    password=${IKEA001.password}
    Verify Login Required Message Displayed if Login Failed
    Get Url    contains    ${BASE_URL}
    BuiltIn.Log to console    Verified login successful with email: ${IKEA001.email} and able to browse to URL: ${BASE_URL}
    #[Teardown]    Close Browser

# IKEA_002: Language ${LANG}
#     common.Open Browser

# IKEA_003: Language ${LANG}
#     common.Open Browser

IKEA_004: Language ${LANG}
    common.Open Browser
    home_page.Search Product    ${IKEA_004.product_type}
    product_page.Verify Product keyword by product type    ${IKEA_004.product_type}
    product_page.Select product by product name    ${IKEA_004.product_name}




# IKEA_005
#     common.Open Browser