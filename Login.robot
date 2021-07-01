*** Variables ***
${validEmailAddress}     //*[@id="email"]
${password}         //*[@id="passwd"]
${signInButton}     //*[@id="SubmitLogin"]
*** Keywords ***
Enter Registered Credentials
    wait until page contains element    ${validEmailAddress}
    click element   ${validemailaddress}
    input text  ${validemailaddress}      newsample_account4@gmail.com
    set selenium speed  1
    wait until page contains element    ${password}
    click element   ${password}
    input text  ${password}      password123
    set selenium speed  1
Sign In Registered Credentials
    click button    ${signinbutton}
