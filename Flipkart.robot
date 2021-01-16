*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Open Flipkart from the browser
    [Tags]    Flip
    Open Browser  https://www.flipkart.com/  gc
    Maximize Browser Window
    Capture Page Screenshot  Title page.png

Login to flipkart
    Press Keys  xpath=//*[contains(text(),'Enter Email/Mobile number')]  8519954075
    Press Keys  xpath=//*[contains(text(),'Enter Password')]  Flip@Kart
    Click Element  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[3]/button
    Capture Page Screenshot  Login page.png

View Cart
    sleep  3s
    Click Element   xpath://span[text()='Cart']
    sleep  3s
    Capture Page Screenshot  Empty cart.png

Shop Now
    click element   xpath://span[text()='Shop now']
    sleep   3s
    
Select Electronics Product(Scenario 1)
    click element   xpath://div[@class='_1kidPb']//span
    sleep   3s
    Capture Page Screenshot  Category.png

Select Mobile Holder under mobile Accessories
    click element   xpath://*[contains(text(),'Mobile Holders')]    
    sleep   3s
    Capture Page Screenshot  Sub Category.png

Selecting the Mobile Holders
    Click Image  xpath://*[@id="container"]/div/div[3]/div[2]/div[1]/div[2]/div[2]/div/div[3]/div/a[1]/div[1]/div/div/img
    sleep  3s
    Select Window  title=Portronics POR-122 MODESK Universal Mobile Holder (Black) Mobile Holder Price in India - Buy Portronics POR-122 MODESK Universal Mobile Holder (Black) Mobile Holder online at Flipkart.com
    sleep  3s
    Capture Page Screenshot  Product Details.png

Adding to Cart(Scenario 2)
    click element   xpath://button[text()='ADD TO CART']
    sleep   3s
    Capture Page Screenshot  Added Cart.png







