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
${HEADERTITLE}     Car Listings
${TEXT_HEADERTITLE}  //input[@value='Cars Listings']
${FEATUREDCAR}   3
${NUMBER_FEATUREDCAR}  //input[@value='4']
${LISTINGCAR}    6
${NUMBER_LISTINGCAR}   //*[@id="GENERAL"]/div[6]/div[1]/input
${SEARCHRESULTCAR}  8
${NUMBER_SEARCHRESULTCAR}  //*[@id="GENERAL"]/div[8]/div[1]/input
${RELATEDCAR}  4
${NUMBER_RELATEDCAR}    //*[@id="GENERAL"]/div[10]/div/input
${METAKEYWORDS}     NEW CARS
${SEO_METAKEYWORDS}  //*[@id="GENERAL"]/div[11]/div[1]/input
${METADESC}   NEW CARS REQUIRES
${SEO_METADESC}  //*[@id="GENERAL"]/div[11]/div[2]/input
${MINPRICE}   6000
${SearchMINPRICE}   //*[@id="GENERAL"]/div[12]/div[1]/input
${MAXPRICE}   600000
${SearchMAXPRICE}   //*[@id="GENERAL"]/div[12]/div[2]/input

*** Keywords ***
Open The Login Page
    Open Browser  ${URL}  ${BROWSER}
Input User Emailid
    Input Text  ${TEXTBOX_USERNAME}  ${EMAILID}  
Input User Password
    Input Text  ${TEXTBOX_PASSWORD}  ${PASSWORD}
Click on Login
    Click Button  //button[@type='submit']
Click on Dashboard
    Click Link  //a[contains(text(),'DASHBOARD')]
#Click on Frontend
    #Click Link  //*[@id="navbar"]/ul[1]/li[1]/a
Click on Configuration
    Click Link  //*[@id="navbar"]/ul[1]/ul/li/a
#Click on Settings
    #Click Link  //*[@id="navbar"]/ul[1]/ul/li/ul/li[1]/a

#Click on Mobile
    #Click Link  //*[@id="content"]/form/div/div[1]/div[2]/ul/li[2]/a
#Click on WaterMark
    #Click Link  //*[@id="content"]/form/div/div[1]/div[2]/ul/li[3]/a
#Click On Email
    #Click Link  //*[@id="content"]/form/div/div[1]/div[2]/ul/li[4]/a
#Click on Theme
    #Click Link  //*[@id="content"]/form/div/div[1]/div[2]/ul/li[5]/a
#Click on Contact
    #Click Link  //*[@id="content"]/form/div/div[1]/div[2]/ul/li[6]/a
#Click on Server Information
    #Click Link  //*[@id="content"]/form/div/div[1]/div[2]/ul/li[7]/a

#Click on Updates
    #Click Link  //*[@id="navbar"]/ul[1]/ul/li/ul/li[2]/a
Click on Modules
    Click Link  //*[@id="navbar"]/ul[1]/ul/li/ul/li[3]/a
    Click Button  //*[@id="content"]/div/div[2]/table[1]/tbody/tr[1]/td[2]/a/button
    Click Element  //*[@id="GENERAL"]/div[2]/div/select/option[1]
    Input Text     ${TEXT_HEADERTITLE}  ${HEADERTITLE}
    Input Text     ${NUMBER_FEATUREDCAR}  ${FEATUREDCAR}
    Click Element  //*[@id="GENERAL"]/div[4]/div[2]/select/option[4]
    Input Text     ${NUMBER_LISTINGCAR}  ${LISTINGCAR}
    Click Element    //*[@id="GENERAL"]/div[6]/div[2]/select/option[4]
    Input Text     ${NUMBER_SEARCHRESULTCAR}  ${SEARCHRESULTCAR}
    Click Element  //*[@id="GENERAL"]/div[8]/div[2]/select/option[4]
    Input Text     ${NUMBER_RELATEDCAR}  ${RELATEDCAR}
    Input Text     ${SEO_METAKEYWORDS}   ${METAKEYWORDS}
    Input Text     ${SEO_METADESC}   ${METADESC}
    Input Text     ${SearchMINPRICE}  ${MINPRICE}
    Input Text     ${SearchMAXPRICE}  ${MAXPRICE}
    Click Button   //*[@id="content"]/form/div/div[2]/button
  
#Click on currencies
    #Click Link   //*[@id="navbar"]/ul[1]/ul/li/ul/li[4]/a
#Click on Print
    #Click Link  //*[@id="content"]/div/div[2]/div/div/div[1]/div[1]/div[1]/a[2]
#Click on Cancel   
    #Click Button   //button[@class='cancel']
#Click on Booking
    #Click Link   
#Click on Profile
    #Click Link  //*[@id="navbar"]/ul[2]/li[1]/a
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
    Sleep  3s
    Click on Login
Click Dashboard
    Sleep  3s
    Click on Dashboard
#Click Frontend
    #Sleep  3s
    #Click on Frontend
Click Configuration
    Sleep  3s
    Click on Configuration
#Click Settings
    #Sleep  3s
    #Click on Settings 

#Click Mobile
    #Sleep  3s
    #Click on Mobile
#Click WaterMark
    #Sleep  3s
    #Click on WaterMark
#Click Email
    #Sleep  3s
    #Click On Email
#Click Theme
    #Sleep  3s
    #Click on Theme
#Click Contact
    #Sleep  3s
    #Click on Contact
#Click Server Information
    #Sleep  3s
    #Click on Server Information
#Click Updates
    #Sleep  3s
    #Click on Updates
Click Modules
    Sleep  3s
    Click on Modules
#Click currencies
    #Sleep  3s
    #Click on currencies
#Click Print
    #Sleep  3s
    #Click on Print    
#Click Cancel
    #Sleep  3s
    #Click on Cancel   
#close windows
    #Sleep  3s
    #Close the Window  
#Click Booking
    #Sleep  5s
    #Click on Booking

