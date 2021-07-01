*** Variables ***
${emailAddress}     xpath: //*[@id="email_create"]
${createAccountButton}  xpath: //*[@id="SubmitCreate"]
${registerButton}   xpath: //*[@id="submitAccount"]
#--------------------------------------------------------
#-----------Personal Information Variables---------------#
${firstName}    xpath: //*[@id="customer_firstname"]
${lastName}     xpath: //*[@id="customer_lastname"]
${password}     xpath: //*[@id="passwd"]
${birthDay}     xpath: //*[@id="days"]
${birthMonth}   xpath: //*[@id="months"]
${birthYear}    xpath: //*[@id="years"]
#-----------Personal Information Variables---------------#
#-----------My Address Variables---------------#
${company}      xpath: //*[@id="company"]
${address}      xpath: //*[@id="address1"]
${city}         xpath: //*[@id="city"]
${state}        xpath: //*[@id="id_state"]
${zipCode}      xpath: //*[@id="postcode"]
${country}      xpath: //*[@id="id_country"]
${mobileNumber}     xpath: //*[@id="phone_mobile"]
#-----------My Address Variables---------------#
*** Keywords ***
Click Email Address Field
    click element   ${emailAddress}
    set selenium speed  1
Enter Email Address
    input text  ${emailAddress}  sample_remonte@gmail.com
    set selenium speed  1
Click Create an Acount Button
    click button    ${createAccountButton}
Enter Personal Information Details
    wait until page contains element    ${firstName}
    click element   ${firstName}
    input text  ${firstName}    June
    set selenium speed  1
    wait until page contains element    ${lastName}
    click element   ${lastName}
    input text  ${lastname}     Remonte
    set selenium speed  1
    wait until page contains element    ${password}
    click element   ${password}
    input password  ${password}     password123
    set selenium speed  1
    wait until page contains element    ${birthday}
    click element   ${birthday}
    click element   //*[@id="days"]/option[5]
    set selenium speed  1
    wait until page contains element    ${birthmonth}
    click element   ${birthmonth}
    click element   //*[@id="months"]/option[4]
    set selenium speed  1
    wait until page contains element    ${birthyear}
    click element   ${birthyear}
    click element   //*[@id="years"]/option[26]
    set selenium speed  1
Enter Address Details
    wait until page contains element    ${company}
    click element   ${company}
    input text  ${company}      Pedro Company
    set selenium speed  1
    wait until page contains element    ${address}
    click element   ${address}
    input text  ${address}      Quezon City Commonwealth
    set selenium speed  1
    wait until page contains element    ${city}
    click element   ${city}
    input text  ${city}      Quezon City
    set selenium speed  1
    wait until page contains element    ${state}
    click element   ${state}
    click element   //*[@id="id_state"]/option[9]
    set selenium speed  1
    wait until page contains element    ${zipCode}
    click element   ${zipCode}
    input text  ${zipcode}      18990
    set selenium speed  1
    wait until page contains element    ${country}
    click element   ${country}
    click element   //*[@id="id_country"]/option[2]
    set selenium speed  1
    wait until page contains element    ${mobilenumber}
    click element   ${mobilenumber}
    input text  ${mobilenumber}      09786538746
    set selenium speed  2
    click button    ${registerbutton}
    set selenium speed  2
Logout Registered Account
    click element   //*[@id="header"]/div[2]/div/div/nav/div[2]/a