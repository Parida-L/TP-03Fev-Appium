*** Settings ***
Resource           home_page.robot
Resource           views_page.robot

*** Variables ***
${START_BUTTON}             //android.widget.Button[@content-desc="Start"]
${STOP_BUTTON}              //android.widget.Button[@content-desc="Stop"]
${RESET_BUTTON}             //android.widget.Button[@content-desc="Reset"]
${SET_FORMAT_STRING_BTN}    //android.widget.Button[@content-desc="Set format string"]
${CLEAR_FORMAT_STRING_BTN}  //android.widget.Button[@content-desc="Clear format string"]
${CHRONOMETER}              io.appium.android.apis:id/chronometer


*** Keywords ***
I Click On The Start Button
    [Documentation]    Click on the Start button.
    Verify The Chonometer Page
    Click Element    ${START_BUTTON}

Verify The Chonometer Page
    [Documentation]    Verify the "Chronometer" page is visible.
    Wait Until Page Contains    text=Views/Chronometer    timeout=5
    Wait Until Page Contains    text=Initial format: 00:00    timeout=5
    Wait Until Page Contains Element    ${START_BUTTON}    timeout=5
    Wait Until Page Contains Element    ${STOP_BUTTON}    timeout=5

I Click On The Set Format String Button
    [Documentation]    Click on the Set Format String button.
    Wait Until Page Contains Element    ${SET_FORMAT_STRING_BTN}    timeout=5
    Click Element    ${SET_FORMAT_STRING_BTN}

The Chronometer Format Has Changed
    [Documentation]    Verify the Chronometer format has changed.
    Wait Until Page Contains  text=Formatted time   timeout=5

The Chronometer Is Still Running
    [Documentation]    Verify the Chronometer is still running by checking the time displayed has changed
    Wait Until Page Contains  text=00:08   timeout=15
    Wait Until Page Contains  text=00:12   timeout=15
