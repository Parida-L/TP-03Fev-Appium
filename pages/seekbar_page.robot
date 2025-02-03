*** Settings ***
Resource           ../resources/libraries.resource
Resource           ../pages/home_page.robot
Resource           ../pages/views_page.robot

*** Variables ***
${SEEK_BAR}            //android.widget.SeekBar[@resource-id="io.appium.android.apis:id/seek"]

*** Keywords ***
I Move The Seek Bar To 88
    [Documentation]    Move the Seek Bar to 88.
    Verify Seek Bar Page
    Move The Bar

The Seek Bar Value Has Changed
    [Documentation]    Verify the Seek Bar value has changed.
    Wait Until Page Contains    text=88 from touch=true    timeout=5
    Wait Until Page Contains    text=Tracking off    timeout=5

Verify Seek Bar Page
    [Documentation]    Verify the "Seek Bar" page is visible.
    Wait Until Page Contains    text=Views/Seek Bar    timeout=5
    Wait Until Page Contains Element   ${SEEK_BAR}    timeout=5
    Click Element    ${SEEK_BAR}
    Wait Until Page Contains  text=Tracking off    timeout=5

Move The Bar
    [Documentation]    Move the Seek Bar to 88.
    # Use the position to swipe
    Swipe    544    304    922    304
