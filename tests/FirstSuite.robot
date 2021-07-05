*** Settings ***
Library    SeleniumLibrary
Default Tags   sanity


*** Test Cases ***
MyFirstTest
    [Tags]    smoke 
    Log  Hello World...
MySecondTest
    Log  2 nd
    Set Tags   regression
MyThirsTest
    Log  3d
    
FirstSeleniumTest
       
    Open Browser   http:google.com    chrome
    Input Text    name=q   text
    Set Browser Implicit Wait    10 
    Press Keys    name=q    ENTER
       
    Close Browser
    Log    Test Completed
    
LoginTest
    Open Browser  ${url}  chrome
    Maximize Browser Window
   LoginKW   
    Click Element    id=welcome
    Set Browser Implicit Wait    5
     Click Element    link=Logout
   
    
    Close Browser
    Log       TestComplete              
   
 

*** Keywords ***
LoginKW 
    Input Text    id=txtUsername    @{credentials}[0]
    Input Password    id=txtPassword        &{LOGIN}[password] 
    Click Button     id=btnLogin 

*** Variables ***
${url}      https://opensource-demo.orangehrmlive.com/   
@{credentials}     Admin   admin123
&{LOGIN}      username=Admin ,  password=admin123
    