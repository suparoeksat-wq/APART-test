*** Settings ***
Library     SeleniumLibrary
Resource    ../Keywords/CommonKeywords.robot
Variables   ../Resources/data.yaml

*** Keywords ***
Login With Incorrect Password
    CommonKeywords.Wait until element is ready then scroll and input text  name=username  ${Correct_username}
    CommonKeywords.Wait until element is ready then scroll and input text  name=password  ${Incorrect_password}
    CommonKeywords.Wait until element is ready then click element  xpath=//button[@type='submit']

Verify Text "Your password is invalid!"
    CommonKeywords.Wait until page contains element then verify text    Your password is invalid!

Login With Incorrect Username
    CommonKeywords.Wait until element is ready then scroll and input text  name=username  ${Incorrect_username}
    CommonKeywords.Wait until element is ready then scroll and input text  name=password  ${Incorrect_password}
    CommonKeywords.Wait until element is ready then click element  xpath=//button[@type='submit']

Verify Text "Your username is invalid!"
    CommonKeywords.Wait until page contains element then verify text    Your username is invalid!