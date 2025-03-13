
*** Variables ***

#In whole app 
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_PLATFORM_NAME}      Android
${DEVICE_NAME}                Android Emulator
${APP_PACKAGE}               com.swaglabsmobileapp
${APP_ACTIVITY}            com.swaglabsmobileapp.MainActivity
${APPIUM_SERVER}              http://127.0.0.1:4723

#In Login page
#    Locators
${USERNAME_LOCATOR}        //android.widget.EditText[@content-desc="test-Username"]
${PASSWOR_LOCATOR}        //android.widget.EditText[@content-desc="test-Password"]
${BTNLOGIN_LOCATOR}       //android.view.ViewGroup[@content-desc="test-LOGIN"]
${ERROR_MSG}              //android.widget.TextView[@text="Username and password do not match any user in this service."]
${CSV_}    Data/Users.csv

#    Variables
${LOGIN_USER}    standard_user
${LOGIN_PASS}    secret_sauce
${INVALID_USER}    Leena
${INVALID_PASS}    Leena1234

#In Product page
#    Locators
${LABLE}       //android.view.ViewGroup[@content-desc="test-Cart drop zone"]/android.view.ViewGroup
${ITEM1}        xpath=(//android.widget.TextView[@text="ADD TO CART"])[1]
${ITEM2}       //android.widget.TextView[@text="ADD TO CART"]
${CART}        //android.view.ViewGroup[@content-desc="test-Cart"]/android.view.ViewGroup/android.widget.ImageView
${MENU_}      //android.view.ViewGroup[@content-desc="test-Menu"]/android.view.ViewGroup/android.widget.ImageView
${LOGOUT_BTN}    //android.view.ViewGroup[@content-desc="test-LOGOUT"]
#Cart page
#   Locators
${CHECOUT}    //android.view.ViewGroup[@content-desc="test-CHECKOUT"]

#Check out page to end
#   Locators
${FIRST_NAME}    //android.widget.EditText[@content-desc="test-First Name"]
${LAST_NAME}    //android.widget.EditText[@content-desc="test-Last Name"]
${CODE}        //android.widget.EditText[@content-desc="test-Zip/Postal Code"]
${CONTINUE_BTN}    //android.view.ViewGroup[@content-desc="test-CONTINUE"]
${FINISH_BTN}        //android.widget.TextView[@text="FINISH"]
${TEXT_MSG}   //android.widget.TextView[@text="THANK YOU FOR YOU ORDER"]

#    Variables
${FIRST_NAME_FORM}    leena
${LAST_NAME_FORM}    Almutairi
${CODE_FORM}        1512

${JSON_FILE}   Data/users.json
