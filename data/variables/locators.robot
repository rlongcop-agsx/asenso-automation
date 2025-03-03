*** Variables ***
# login page
${login_form}                  css=form:nth-child(1)
${email}=                      css=input#email
${password}=                   css=input#password
${login_submit}=                     button[type='submit']
${signup_btn}                  xpath=(//a[contains(@href, 'create-account')])[2]

# signup page
${signup_header}               css=body > div > main > div > div > div.flex.flex-col.space-y-1\.5.p-6.pt-12.px-12 > div.text-2xl.font-semibold.leading-none.tracking-tight
${signup_form}                 xpath=/html/body/div/main/div/div
${citizenship_dropdown}        xpath=//*[contains(text(),'Citizenship')]
${citizenship_ph}              xpath=//*[contains(text(),'PH')]
${citizenship_us}              xpath=//*[contains(text(),'US')]
${first_name}                  css=input#firstName
${middle_name}                 css=input#middleName
${last_name}                   css=input#lastName
${suffix}                      css=input#suffix
${email}                       css=input#email
${phone_number}                css=input[type='tel']
${consent}                     css=label[for="termsAndConditions"] > div:nth-child(1)
${signup_submit}               css=button[type='submit']