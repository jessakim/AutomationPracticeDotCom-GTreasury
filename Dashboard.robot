*** Variables ***
${womenMenu}    //*[@id="block_top_menu"]/ul/li[1]/a
${womenTops}    //*[@id="categories_block_left"]/div/ul/li[1]/span
${womenShirts}  //*[@id="categories_block_left"]/div/ul/li[1]/ul/li[1]/a
*** Keywords ***
Redirecting to Women's Section
    wait until page contains element    ${womenMenu}
    click element   ${womenMenu}
    set selenium speed  2
Clicking Tops Section
    wait until page contains element    ${womenTops}
    click element   ${womenTops}
    set selenium speed  1
Redirecting to Women's Tshirt Section
    wait until page contains element    ${womenshirts}
    click element   ${womenShirts}
    set selenium speed  2
