*** Settings ***
Library    Browser    strict=${False}
Library    String
Library    DebugLibrary
Resource    ${CURDIR}/../resources/import.robot

*** Variables ***
# --- Locators: Navigation ---
${NAV_PROFILE_BTN}      id=hnf-header-profile


# --- Locators: Sign-in Page ---
${SIGNIN_EMAIL}         css=#login-email
${SIGNIN_PASSWORD}      css=#login-password
${SIGNIN_SUBMIT}        css=[data-testid='login']


*** Keywords ***
Verify Login Required Message Displayed if Login Failed
    Get text    css=p:has-text("The email"), p:has-text("อีเมล")   ==    ${login_require_message}


*** Test Cases ***
IKEA Page: Language ${LANG}
    [Documentation]    ${LANG} IKea Page
    [Setup]    Open Browser Dynamic URL

    
    # 1. Dynamic Data Preparation(Prevent dupplicate Email)
    ${USER_EMAIL}=    Set Variable    camp_26@doppiotech.com
    ${USER_PASS}=     Set Variable    Camp123*

    # 3. Verfy New Account Test Login
    Login To System      email=${USER_EMAIL}    password=${USER_PASS}
    Verify Login Required Message Displayed if Login Failed
  
    # 5. ยืนยันว่าเข้าสู่ระบบได้จริง
    Get Url    contains    ${BASE_URL}
    BuiltIn.Log to console    Verified login successful with email: ${USER_EMAIL} and able to browse to URL: ${BASE_URL}
    #Wait For Elements State    ${NAV_ACCOUNT_BTN}    visible
    
    [Teardown]    Close Browser