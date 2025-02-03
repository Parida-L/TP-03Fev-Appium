*** Settings ***
Resource           home_page.robot
Resource           views_page.robot

*** Variables ***
${PUSH_OPTION_HYPERSPACE}    //android.widget.CheckedTextView[@resource-id="android:id/text1" and @text="Hyperspace"]

*** Keywords ***
I Select Hyperspace From The Push Option
    [Documentation]    Select the "Hyperspace" option from the "Push" option.
    Verify The Push Element From The Animation Element
    Click On The Push Button From The Animation Element
    Verify The Push Page
    Select The Hyperspace Option From The Push Page

A Quote From Albert Camus Is Displayed
    [Documentation]    Verify a quote from Albert Camus is displayed.
    Wait Until Page Contains    text=Freedom    timeout=10
    Capture Page Screenshot
    Wait Until Page Contains    text=is nothing else but    timeout=10
    Capture Page Screenshot
    Wait Until Page Contains    text=a chance to be better     timeout=10
    Capture Page Screenshot
    Wait Until Page Contains    text=Albert Camus    timeout=10
    Capture Page Screenshot

Verify The Push Element From The Animation Element
    [Documentation]    Verify the "Push" element is visible.
    Wait Until Page Contains    text=Push    timeout=5
    Wait Until Element Is Visible    //android.widget.TextView[@content-desc="Push"]    timeout=5

Click On The Push Button From The Animation Element
    [Documentation]    Click on the Push button.
    Click Element    xpath=//android.widget.TextView[@content-desc="Push"]

Verify The Push Page
    [Documentation]    Verify the "Push" page is visible.
    Wait Until Page Contains    text=Views/Animation/Push    timeout=5

Select The Hyperspace Option From The Push Page
    [Documentation]    Select an animation.
    Click Element    //android.widget.TextView[@resource-id="android:id/text1"]
    Sleep    2
    Wait Until Element Is Visible  ${PUSH_OPTION_HYPERSPACE}    timeout=5
    Click Element    ${PUSH_OPTION_HYPERSPACE}
    Sleep    2
