*** Settings ***
Library    SeleniumLibrary
Library    String    
Resource    ../resource/Common.resource
Resource    ../resource/HomePage_resource.resource
Resource    ../resource/orderpage.resource
Resource    ../StepDefinitions/purchase_product.resource.robot
Suite Setup    Ecommerce Suite Setup
Suite Teardown    Close All Browsers
Test Setup    Ecommerce Test Setup

*** Test Cases ***
Test import selenium resouce file
    Mouse Over    xpath:(//div[@class="product-image-container"])[1]
    Click Link    css:ul#homefeatured a[data-id-product="1"]

Demo page resource
    HomePage_resource.Add Product to shopping cart    1
    HomePage_resource.Checkout product
    orderpage.Wait Until page load success
    orderpage.Verify Total Product Price    $16.51                 
    orderpage.Verify Shipping fee    $2.00
    orderpage.Verify Total Price    $18.51
    Summary total price