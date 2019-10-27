*** Settings ***
Library    SeleniumLibrary
Library    String
test Setup    Open Browser    url=${Target URL}    browser=${Browser}
test teardown    Close Browser

*** Variables ***
 ${Target URL}    http://automationpractice.com/index.php
 ${Browser}    gc

*** Test Cases ***
User Checkout should cal total price and shipping free
    Open Browser    url=${Target URL}    browser=${Browser}
    Click Link    css:ul#homefeatured a[data-id-product="1"]
    Wait Until Element Is Visible    css:a[title="Proceed to checkout"]    5 seconds
    Click Link    css:a[title="Proceed to checkout"]
    Wait Until Page Contains    Shopping-cart summary    5 seconds
    ${total products price} =    Get Text    id:total_product
    Should Be Equal As Strings    $16.51    ${total products price}  
    
User Checkout should cal total price and shipping free1
    Open Browser    url=${Target URL}    browser=${Browser}
    Maximize Browser Window
    Mouse Over    xpath:('(//div[@class="product-image-container]")[1]
    Click Link    css:ul#homefeatured a[data-id-product="1"]
    Wait Until Element Is Visible    css:a[title="Proceed to checkout"]    5 seconds
    Click Link    css:a[title="Proceed to checkout"]
    Wait Until Page Contains    Shopping-cart summary    5 seconds
    ${total shipping price} =    Get Text    id:total_shipping
    Should Be Equal As Strings    $2.00    ${total shipping price} 
    ${total price} =    Get Text    id:total_price
    Should be Equal As Strings    $18.51    ${total price} 
    ${total Tax} =    Get Text    id:total_tax
    Should be Equal As Strings    $0.00    ${total Tax} 
    Close All Browsers
    
Checkout multiple Product
    Open Browser    url=${Target URL}    browser=${Browser}
    