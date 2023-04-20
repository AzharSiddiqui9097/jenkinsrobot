*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/config.py
Library      ../Locators/webdrivers.py
Variables     ../Locators/locators.py

*** Keywords ***
Launch Browser
    [Arguments]    ${url}      ${browser}
    ${driver_path}      webdrivers.get driver path with browser    ${browser}
    open browser    ${url}      ${browser}      executable_path=${driver_path}
    set selenium implicit wait    60 seconds
    maximize browser window
    wait until page contains element        ${login_button_ele}

Close Browser
    close all browsers

