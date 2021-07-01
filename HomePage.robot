*** Settings ***
Documentation    Suite description
Library   Selenium2Library
Resource  SignUp.robot
Resource  Login.robot
Resource  Dashboard.robot
Resource  AddToCart.robot
Resource  CheckOutItem.robot
*** Variables ***
${url}      http://automationpractice.com/index.php
${browser}  chrome

*** Test Cases ***
[TC-001] - Launching Web Application
    Launch Browser and Open Web Application URL
[TC-002] - Check Sign in button if clickable
    Click Sign in Button
[TC-003] - Adding Email Address For Account Registration
    Click Email Address Field
    Enter Email Address
    Click Create an Acount Button
[TC-004] - Filing Up Personal Details
    Enter Personal Information Details
    Enter Address Details
    Logout Registered Account
[TC-005] - Signing In Registered Account
    Enter Registered Credentials
    Sign In Registered Credentials
[TC-006] - Landing to Women T-Shirt Section
    Redirecting to Women's Section
    Clicking Tops Section
    Redirecting to Women's Tshirt Section
[TC-007] - Picking Tshirt Item for Adding to Cart
    Viewing Item
#    Redirecting to Quick View of the item
    Clicking Add to Cart Button
    Clicking Prooced to Checkout Button
[TC-008] - Checkout Pickec Items
    Proceed to Address Verification Section
    Proceed to Shipping Verification Section
    Proceed to Payment Method
    Pay Using Bank Wire Method
    Order Confirmation
    Logout Account
*** Keywords ***
Launch Browser and Open Web Application URL
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed   2
Click Sign in Button
    click element   xpath: //*[@id="header"]/div[2]/div/div/nav/div[1]/a
    set selenium speed   2