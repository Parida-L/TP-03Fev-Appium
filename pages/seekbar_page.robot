*** Settings ***
Resource           ../resources/libraries.resource
Resource           ../pages/home_page.robot
Resource           ../pages/views_page.robot

*** Variables ***
${SEEK_BAR}            //android.widget.SeekBar[@resource-id="io.appium.android.apis:id/seek"]

*** Keywords ***

When I Move The Seek Bar To 88
    [Documentation]    Move the Seek Bar to 88.
    Verify Seek Bar Page
    Click Element    ${SEEK_BAR}


Verify Seek Bar Page
    Wait Until Page Contains    text=Views/Seek Bar    timeout=5
    Wait Until Page Contains Element   ${SEEK_BAR}    timeout=5

Move The Bar
    [Documentation]    Move the Seek Bar to 88.
    # Drag And Drop    544    304    914    304
