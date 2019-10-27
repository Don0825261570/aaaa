*** Test Cases ***
Demo Scalar
    ${username}    Set Variable    อาม่า
    ${password}    BuiltIn.Set Variable   Doe
    Log    Hello ${username} and ${password} 
    Log    Hi ${username}
    ${nickname}    Set Variable    Mr.J
    
Demo List
    @{product names}    Create List    Iphone11    Android 12    Window phone
    Log Many    @{product names}
    Log    ${product names[1]}
    
Demo Dictionary
    &{user1}    Create Dictionary    username=john    password=Welcome1
    &{user2}    Create Dictionary    username=mary    password=Welcome2
    Log    ${user1.username}
    Log    ${user2.password}
    
Demo set keywords
    ${hi} =     Set Variable     Hello, world!   
    ${hi2} =     Set Variable     I said:     ${hi}   
    ${var1}     ${var2} =     Set Variable     Hello world 
    @{list} =     Set Variable     ${list with some items}   
    ${item1}     ${item2} =     Set Variable     ${list with 2 items}  
