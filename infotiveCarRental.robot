*** Setting ***
Documentation       Information about the Test Suite
Resource            keywords.robot
Library             SeleniumLibrary


Test Setup          Begin Web Test
Test Teardown       End Web Test


*** Variables ***

${BROWSER} =  chrome

${URL} =  http://rental11.infotiv.net/

*** Test Cases ***


Creating the User
        [Documentation]                 Creating the User
        [Tags]                          Test 1 Creating User

        Creating User


Login Function
        [Documentation]                Testing Login function
        [Tags]                         Test 2 Login

        User Login



Login with Invalid Email

        [Documentation]             Testing with invlaid Email
        [Tags]                      Test 3 Invalid Email

        Login with Invalid Email

Login with Invlaid Password

        [Documentation]             Tesing with invlaid password
        [Tags]                      Test 4 Invlaid Password

        Login with Invlaid Password

Selecting Date

        [Documentation]             Testing date Function
        [Tags]                      Test 5 Selecting Date function

        Selecting Date




Booking Car

        [Documentation]             Testing to book a car
        [Tags]                      Test 6 Booking of a car

        Selecting Date
        User Login
        Booking Car


