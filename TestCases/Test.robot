*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locators.py
Resource        ../Resources/Ressources.robot
Suite Setup    Launch Browser   ${url}      ${browser}
Suite Teardown    Close Browser

*** Variables ***
${url}      https://www.saucedemo.com/
${browser}

*** Test Cases ***
Login to SauceDemo
    input text    ${username_ele}       ${username}
    input text    ${password_ele}       ${password}
    click button    ${login_button_ele}
    title should be    Swag Labs