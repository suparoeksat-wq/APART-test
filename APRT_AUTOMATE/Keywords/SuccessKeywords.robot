*** Settings ***
Library     SeleniumLibrary
Resource    ../Keywords/CommonKeywords.robot
Variables   ../Resources/data.yaml

*** Keywords ***
Login With Correct Username And Password
    CommonKeywords.Wait until element is ready then scroll and input text  name=username  ${Correct_username}
    CommonKeywords.Wait until element is ready then scroll and input text  name=password  ${Corrct_password}
    CommonKeywords.Wait until element is ready then click element  xpath=//button[@type='submit']

Verify Text "You logged into a secure area!"
    CommonKeywords.Wait until page contains element then verify text    You logged into a secure area!

Logout And Verify Text "You logged out of the secure area!"
    CommonKeywords.Wait until element is ready then click element  xpath=//a[@href='/logout']
    CommonKeywords.Wait until page contains element then verify text    You logged out of the secure area!