*** Settings ***
Resource    Resource/resource.robot


Suite Setup    Open Test Application
Suite Teardown    Close Application

*** Test Cases ***

TC01 - Login Case 1
    Login with valid credential
    
TC02 - Login Case 2 
    Login with invalid credential
    
TC03 - Login Case 3 
#    Login With Multiple Users From CSV (DDT)
    Login With Multiple Users From JSON (DDT)


TC04 - End to End Case
    Login With Valid Credential
    Add product to cart
    Complete Order
    Complete checkout

