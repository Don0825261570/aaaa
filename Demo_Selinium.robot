*** Settings ***
Library    SeleniumLibrary

*** Variables ***
 ${Target URL}    http://automationpractice.com/index.php
 ${Browser}    gc

*** Test Cases ***
Open browser demo
    Open Browser    url=${Target URL}    browser=${Browser}
    
Test Case 2
        Log    ${Target URL}
        
Test Id locator
    Open Browser    url=${Target URL}    browser=${Browser}
    Click Element    id:contact-link    
    Page Should Contain    send a message
    
Test CSS locator
    Open Browser    url=${Target URL}    browser=${Browser}
    Click Element    css:a.login 
    sleep    3 seconds
    
Test Class locator
    Open Browser    url=${Target URL}    browser=${Browser}
    Click Element    Class:login