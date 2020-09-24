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

*** Keywords ***
Product Landing Page is opened
    Open Browser                       ${PRODUCT PAGE}    ${BROWSER}

The expected title page should be '${title}'
    Title should be                    ${title}

