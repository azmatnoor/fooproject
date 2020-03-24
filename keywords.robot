*** Settings ***

Library                 SeleniumLibrary

*** Keywords ***

Begin Web Test

        Open Browser                   about:blank   chrome
        Maximize Browser Window
        Load Page
        Verify Page Loaded
Load Page
         Go To                          http://rental22.infotiv.net/

Verify Page Loaded
        Wait Until Page Contains        Infotiv Car Rental

End Web Test

                              Close Browser



User Login

        Element Should Be Visible       id:userInfoTopBottom
        Input Text                      id:email            azmatgr8@gmail.com
        Input Text                      id:password         Office786
        Click Button                    id:login
        Element Should Be Visible        id:welcomePhrase


Header

        Element Should Be Visible       id:headerWrapper
        Click Button                    id:continue
        Element Should Be Visible       id:headerWrapper
        Click Button                    id:bookQ7pass5
        Element Should Be Visible       id:headerWrapper
        Click Button                    id:confirm
        Element Should Be Visible       id:headerWrapper



Confirm Booking


        Input Text                      id:cardNum              3456234512345678
        Input Text                      id:fullName             sdfadf dsfsdf
        Select From List By Label       xpath://select[@title="Month"]      3
        Select From List By Label       xpath://select[@title="Year"]       2023
        Input Text                      id:cvc                              234
        Click Button                    id:confirm
        Element Should Be Visible       id:confirmMessage


