*** Settings ***
Library                 SeleniumLibrary

*** Keywords ***

Begin Web Test

        Open Browser                   about:blank   ${BROWSER}
        Maximize Browser Window
        Load Page
        Verify Page Loaded
Load Page
        Go To                                         ${URL}

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
        Press Keys                           id:start               {05/27}
        Press Keys                           id:end                 {05/29}
        Sleep                                3s
        Click Button                        id:continue









