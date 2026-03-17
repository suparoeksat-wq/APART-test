*** Settings ***
Library     SeleniumLibrary
Resource    ../Keywords/SuccessKeywords.robot
Resource    ../Keywords/FailedKeywords.robot
Test Setup      Open Website
Test Teardown   Close All Browsers


*** Test Cases ***
TC01 Login And Logout Successfully
    Login With Correct Username And Password
    Verify Text "You logged into a secure area!"
    Logout And Verify Text "You logged out of the secure area!"

TC02 Login Failed With Incorrect Password
    Login With Incorrect Password
    Verify Text "Your password is invalid!"

TC03 Login Failed With Incorrect Username
    Login With Incorrect Username
    Verify Text "Your username is invalid!"