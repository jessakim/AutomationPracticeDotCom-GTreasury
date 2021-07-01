*** Variables ***
${proceedCheckOut}  //*[@id="center_column"]/p[2]/a[1]
${proceddAddress}   //*[@id="center_column"]/form/p/button
${termsOfService}   //*[@id="cgv"]
${processCarrier}   //*[@id="form"]/p/button
${bankWireMethod}   //*[@id="HOOK_PAYMENT"]/div[1]/div/p/a
${confirmOrder}     //*[@id="cart_navigation"]/button
${logout}           //*[@id="header"]/div[2]/div/div/nav/div[2]/a
*** Keywords ***
Proceed to Address Verification Section
    wait until page contains element    ${proceedcheckout}
    click element       ${proceedcheckout}
    set selenium speed  1
Proceed to Shipping Verification Section
    wait until page contains element    ${proceddaddress}
    click button       ${proceddaddress}
    set selenium speed  1
Proceed to Payment Method
    wait until page contains element    ${termsofservice}
    click element       ${termsofservice}
    set selenium speed  1
    wait until page contains element    ${processcarrier}
    click button       ${processcarrier}
    set selenium speed  1
Pay Using Bank Wire Method
    wait until page contains element    ${bankwiremethod}
    click element       ${bankwiremethod}
    set selenium speed  1
Order Confirmation
    wait until page contains element    ${confirmorder}
    click button       ${confirmorder}
    set selenium speed  4
Logout Account
    wait until page contains element    ${logout}
    click element       ${logout}