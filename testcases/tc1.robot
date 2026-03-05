*** Settings ***
Resource    ${CURDIR}/../resources/import.robot

*** Test Cases ***
IKEA Page: Language ${LANG}
    [Documentation]    ${LANG} IKea Page
    [Setup]    Open Browser Dynamic URL

    Login To System      email=${IKEA001.email}    password=${IKEA001.password}
    Verify Login Required Message Displayed if Login Failed
  
    Get Url    contains    ${BASE_URL}
    BuiltIn.Log to console    Verified login successful with email: ${IKEA001.email} and able to browse to URL: ${BASE_URL}
    [Teardown]    Close Browser