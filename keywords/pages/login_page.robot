*** Keywords ***
Login To System
    [Arguments]    ${email}    ${password}
    [Documentation]    ล็อกอินเข้าสู่ระบบ
    Click          ${NAV_PROFILE_BTN}
    Fill Text      ${SIGNIN_EMAIL}    ${email}
    Fill Text      ${SIGNIN_PASSWORD}     ${password}
    Click          ${SIGNIN_SUBMIT}
    # แทนที่จะรอปุ่มหาย ให้รอจนกว่าหน้าโปรไฟล์จะโหลดสำเร็จ หรือ Element อื่นที่ยืนยันว่าผ่านหน้านี้ไปแล้ว
    Wait For Condition    Url    contains    ${BASE_URL}    timeout=5s