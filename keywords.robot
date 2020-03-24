*** Settings ***
Library                 SeleniumLibrary

*** Keywords ***

Begin Web Test

        Open Browser                   about:blank   chrome
        Maximize Browser Window
        Load Page
        Verify Page Loaded
Load Page
        Go To                          http://rental11.infotiv.net/

Verify Page Loaded
        Wait Until Page Contains        Infotiv Car Rental

End Web Test

         Close Browser

Creating User

        Click Button                    id:createUser
        Input Text                      id:name             azmat
        Input Text                      id:last             noor
        Input Text                      id:phone            0739068713
        Input Text                      id:emailCreate      azmatgr8@gmail.com
        Input Text                      id:confirmEmail     azmatgr8@gmail.com
        Input Text                      id:passwordCreate   Office786
        Input Text                      id:confirmPassword  Office786
        Click Button                    id:create


User Login

        Element Should Be Visible       id:userInfoTopBottom
        Input Text                      id:email            azmatgr8@gmail.com
        Input Text                      id:password         Office786
        Sleep                           3s
        Click Button                    id:login


Login with Invalid Email

        Input Text                      id:email            azmatgr823@gmail.com
        Input Text                      id:password         Office786
        Sleep                           5s
        Click Button                    id:login
        Element Should Be Visible       id:signInError

Login with Invlaid Password

        Input Text                      id:email            azmatgr8@gmail.com
        Input Text                      id:password         Office78612
        Sleep                           5s
        Click Button                    id:login
        Element Should Be Visible       id:signInError

Selecting Date

        Click Element                        id:start
        Press Keys                           id:start               {03/26}
        Press Keys                           id:end                 {03/28}
        Sleep                                3s
        Click Button                        id:continue

Booking Car

        Click Button                         xpath://*[@id="ms-list-1"]/button
        Select Checkbox                      id:ms-opt-1
        Click Button                         xpath://*[@id="ms-list-2"]/button
        Select Checkbox                      id:ms-opt-5
        Click Element                        id:rightpane
        Sleep                                2s
        Click Element                        id:carSelect1
        ${pickup_date} =                    Get Text                id:startDate
        Should Be Equal                     ${pickup_date}          Pickup date: 2020-03-26
        ${return_date} =                    Get Text                id:endDate
        Should Be Equal                     ${return_date}          Return date: 2020-03-28
        Input Text                          id:cardNum              1234234534564567
        Input Text                          id:fullName             Azmat Noor
        Select From List By Index            xpath://*[@id="confirmSelection"]/form/select[1]    2
        Select From List By Index            xpath://*[@id="confirmSelection"]/form/select[2]    5
        Input Text                           id:cvc               786
        Click Button                         id:confirm
        Wait Until Page Contains             now ready for pickup








