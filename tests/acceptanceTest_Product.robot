*** Settings ***
Library           SeleniumLibrary
Documentation     https://www.freecodecamp.org/learn/responsive-web-design/responsive-web-design-projects/build-a-product-landing-page
Suite Setup       Open Browser       ${PRODUCT PAGE}    ${BROWSER}
Suite Teardown    Close Browser


*** Variables ***
${PRODUCT PAGE}   C:/Users/R Co/WebSite/Build_a_Product/Build_a_Product.html
${BROWSER}        Chrome
${EMAIL}          123@123.com

*** Test Cases ***
Check open page
    Open Product Landing Page

Check header elements
    Check header element
    Check logo element
    Check the operation of the navigation elements

Check the possibility of watching the movie
    Check video element

Check the possibility of sending an email
     Check email send
#     Check incorrect email validation

*** Keywords ***
Open Product Landing Page
    Page should contain element      id=title
    Title should be                  Product Landing Page

Check header element
    Page should contain element      id=header

Check logo element
    Page should contain image        id=header-img

Check the operation of the navigation elements
    Page should contain element      id=nav-bar
    Click Link                       id=about
    Page should contain element      id=about_us
    Click Link                       id=price
    Page should contain element      id=pricing
    Click Link                       id=cont
    Page should contain element      id=contact

Check video element
    Page Should Contain Element      id=video

Check email send
    Page should contain element       id=email
    Input Text                        id=email      ${EMAIL}
    Click Button                      Subscribe
#    Page should contain element       Message sent

#Check incorrect email validation
#    Input Text                        id=email      ${EMAIL}
#    Click Button                      Subscribe
#    Page should contain element
