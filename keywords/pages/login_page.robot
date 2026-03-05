*** Keywords ***
Login To System
    [Arguments]    ${email}    ${password}
    [Documentation]    ล็อกอินเข้าสู่ระบบ
    Click          ${NAV_PROFILE_BTN}
    Fill Text      ${SIGNIN_EMAIL}    ${email}
    Fill Text      ${SIGNIN_PASSWORD}     ${password}
    Click          ${SIGNIN_SUBMIT}
    Wait For Condition    Url    contains    ${BASE_URL}    timeout=5s

Verify Login Required Message Displayed if Login Failed
    Get text    css=p:has-text("The email"), p:has-text("อีเมล")   ==    ${login_require_message}