*** Settings ***
Library  Selenium2Library
Library  BuiltIn
*** Variable ***
${URL}      http://phptravels.net/admin/
${BROWSER}  chrome
${EMAILID}  admin@phptravels.com
${TEXTBOX_USERNAME}  //input[@type='text']
${PASSWORD}  demoadmin
${TEXTBOX_PASSWORD}  //input[@name='password']
*** Keywords ***
Open The Login Page
    Open Browser  ${URL}  ${BROWSER}
Input User Emailid
    Input Text  ${TEXTBOX_USERNAME}  ${EMAILID}  
Input User Password
    Input Text  ${TEXTBOX_PASSWORD}  ${PASSWORD}
Click on Login
    Click Button  //button[@type='submit']
*** Test Cases ***
Open Home Page
    Open The Login Page
    Maximize Browser Window
Input Email
    Sleep  3s
    Input User Emailid 
Input Password
    Sleep  3s
    Input User Password
Click Login
    Click Button  //button[@type='submit']