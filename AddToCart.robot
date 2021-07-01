*** Variables ***
${tshirtImage}  //*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img
${quickView}    //*[@id="center_column"]/ul/li/div/div[1]/div/a[2]
${addToCart}    //*[@id="center_column"]/ul/li/div/div[2]/div[2]/a[1]
${checkOut}     //*[@id="layer_cart"]/div[1]/div[2]/div[4]/a
*** Keywords ***
Viewing Item
    wait until page contains element    ${tshirtImage}
    mouse over      ${tshirtImage}
    set selenium speed  1
#Redirecting to Quick View of the item
#    wait until page contains element    ${quickView}
#    click element       ${quickView}
#    set selenium speed  3
Clicking Add to Cart Button
    wait until page contains element    ${addToCart}
    click element       ${addToCart}
    set selenium speed  2
Clicking Prooced to Checkout Button
    wait until page contains element    ${checkOut}
    click element       ${checkOut}
    set selenium speed  1