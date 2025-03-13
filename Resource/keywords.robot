
*** Settings ***
Resource    Resource/resource.robot

*** Keywords ***

# in whole app 

Open Test Application
    Open Application
    ...    ${APPIUM_SERVER}
    ...    automationName=${ANDROID_AUTOMATION_NAME}
    ...    platformName=${ANDROID_PLATFORM_NAME}
    #...    platformVersion=${ANDROID_PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    
Wait And Click
    [Arguments]    ${locator}    ${timeout}=10s
    Wait Until Element Is Visible    ${locator}    timeout=${timeout}
    Click Element    ${locator}
    
Wait And Input Text
    [Arguments]    ${locator}    ${text}    ${timeout}=10s
    Wait Until Element Is Visible    ${locator}    timeout=${timeout}
    Input Text    ${locator}    ${text}
    
Scroll to under 
    FOR        ${index}    IN RANGE    2
    Swipe    931    2215    954    988
    END

# In Login Page

Preforms Login 
   [Arguments]    ${locator1}   ${text1}     ${locator2}  ${text2}  ${Button}  ${timeout}=10s
    Wait And Input Text   ${locator1}   ${text1}      10 seconds
    Wait And Input Text    ${locator2}  ${text2} 
    Wait And Click    ${Button}

Logout
    Wait And Click    ${MENU_}
    Wait And Click    ${LOGOUT_BTN}

Login with valid credential
    Preforms Login     ${USERNAME_LOCATOR}    ${LOGIN_USER}    ${PASSWOR_LOCATOR}  ${LOGIN_PASS}     ${BTNLOGIN_LOCATOR}     10s

Login with invalid credential
    Preforms Login    ${USERNAME_LOCATOR}    ${INVALID_USER}     ${PASSWOR_LOCATOR}  ${INVALID_PASS}      ${BTNLOGIN_LOCATOR}  10s
    Wait And Click    ${ERROR_MSG}
    
#Login With Multiple Users From CSV (DDT)
#   ${data}    Read Csv File To List       ${CSV_}
#   FOR    ${row}    IN    @{data}
#        ${username}    ${password}    Set Variable    ${row}[0]    ${row}[1]
#        Log    Logging in with ${username} and ${password}
#        Preforms Login     ${USERNAME_LOCATOR}    ${username}      ${PASSWOR_LOCATOR}      ${password}   ${BTNLOGIN_LOCATOR}  10s
#   END

Login With Multiple Users From JSON (DDT)
    ${data}=    Load JSON From File    ${JSON_FILE}
    ${users}=    Get From Dictionary    ${data}    users

    FOR    ${user}    IN    @{users}
        ${username}=    Get From Dictionary    ${user}    username
        ${password}=    Get From Dictionary    ${user}    password

        Log    Logging in with ${username} and ${password}
        Preforms Login     ${USERNAME_LOCATOR}    ${username}      ${PASSWOR_LOCATOR}      ${password}   ${BTNLOGIN_LOCATOR}  10s
        Logout
    END

# In product page
Add product to cart
    Wait And Click     ${ITEM1}    3s
    Wait And Click     ${ITEM2}    3s
    Wait And Click    ${CART}


# Car page
Complete Order
    Scroll to Under
    Wait And Click     ${CHECOUT}

# Checkout Page
Complete checkout  
    Wait And Input Text      ${FIRST_NAME}    ${FIRST_NAME_FORM}
    Wait And Input Text     ${LAST_NAME}    ${LAST_NAME_FORM}
    Wait And Input Text     ${CODE}    ${CODE_FORM}
    Wait And Click    ${CONTINUE_BTN}
    Scroll to Under
    Wait And Click    ${FINISH_BTN}
    Wait And Click       ${TEXT_MSG}
