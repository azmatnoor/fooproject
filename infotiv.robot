*** Settings ***
Documentation           This is some basic info about the whole test suite
Resource                keywords.robot
Library                 SeleniumLibrary

Test Setup      Begin Web Test
Test Teardown   End Web Test


*** Test Cases ***




Login Function
        [Documentation]                This is test to check the Login function
        [Tags]                         Test1 Login

        User Login

Check headers

        [Documentation]                This is test to check the headers for every page
        [Tags]                         Test2 Headers

        User Login
        Header

Check confirm Booking

        [Documentation]                This is test to check the confirm booking
        [Tags]                         Test3 Booking Confirmation

        User Login
        Header
        Confirm Booking







