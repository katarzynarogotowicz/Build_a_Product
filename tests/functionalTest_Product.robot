*** Settings ***
Library           Selenium2Library
Documentation     https://www.freecodecamp.org/learn/responsive-web-design/responsive-web-design-projects/build-a-product-landing-page

*** Variables ***
${PRODUCT PAGE}   C:\Users\R Co\WebSite\Build_a_Product\Build_a_Product.html
${BROWSER}        chrome

*** Test Cases ***
Check open Product Landing Page
  When Product Landing Page is opened
  Then The expected title page should be 'Product Landing Page'
  [Teardown]  Close Browser

#Check email send
#  When Product Landing Page is opened
#  Given User fill an email field with '123@123.com'
#  Then Element email contains '123@123.com'
#  [Teardown]  Close Browser

#Check incorrect email
#  When Product Landing Page is opened
#  Given User fill an email field with '123@123'
#  Then ....
#  [Teardown]  Close Browser

*** Keywords ***
Product Landing Page is opened
    Open Browser                       ${PRODUCT PAGE}    ${BROWSER}

The expected title page should be '${title}'
    Title should be                    ${title}

#User fill an email field with '${email}'
#    Input Text                         id=email          ${email}
#
#Element email contains '${email}'
#    Element Text Should Be             id=email          ${email}

