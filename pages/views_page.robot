*** Settings ***
Resource           ../resources/libraries.resource
Resource           ../pages/home_page.robot

*** Variables ***
${IMG_SWITCHER_OPTION}        //android.widget.TextView[@content-desc="ImageSwitcher"]
${SECURE_VIEW_OPTION}         //android.widget.TextView[@content-desc="Secure View"]
${SEEK_BAR_OPTION}            //android.widget.TextView[@content-desc="Seek Bar"]
${SPLITTING_TOUCHES_OPTION}   //android.widget.TextView[@content-desc="Splitting Touches across Views"]
${ANIMATION_OPTION}           //android.widget.TextView[@content-desc="Animation"]

*** Keywords ***

I Am On The ApiDemos APK Views Page
    [Documentation]    Open the ApiDemos APK and navigate to the Views page.
    I Launch The APIDemos App
    Verify The Views Element From The Home Page
    Click On The Views Button From The Home Page

I Click On The 'Animation' Option
    [Documentation]    Click on the "Animation" option.
    Verify Animation Option From The Views
    Click Animation Option From The Views

I Am On The Chronometer Option Of The Views Page
    [Documentation]    Open the Chronometer option from the Views page.
    I Am On The ApiDemos APK Views Page
    Verify The Chronometer Option From The Views Page
    Click Chronometer Option From The Views Page

I Am On The Seek Bar Option Of The Views Page
    [Documentation]    Open the Seek Bar option from the Views page.
    I Am On The ApiDemos APK Views Page
    Scroll To The Seek Bar Option From The Views Page
    Verify Seek Bar Option From Views
    Click Seek Bar Option From Views

#SOUS KEYWORDS

Verify Animation Option From The Views
    [Documentation]    Verify the "Animation" option is visible.
    Wait Until Page Contains    text=Animation    timeout=5
    Wait Until Element Is Visible    //android.widget.TextView[@content-desc="Animation"]    timeout=5

Click Animation Option From The Views
    [Documentation]    Click on the Animation option.
    Click Element    xpath=//android.widget.TextView[@content-desc="Animation"]

Verify The Chronometer Option From The Views Page
    [Documentation]    Verify the "Chronometer" element is visible.
    Wait Until Page Contains    text=Chronometer    timeout=5
    Wait Until Element Is Visible    //android.widget.TextView[@content-desc="Chronometer"]    timeout=5

Click Chronometer Option From The Views Page
    [Documentation]    Click on the Chronometer element.
    Click Element    //android.widget.TextView[@content-desc="Chronometer"]

Scroll To The Seek Bar Option From The Views Page
    [Documentation]    Scroll to the Seek Bar option.
    Swipe    500    1500    500    500
    Sleep    1
    Swipe    500    1500    500    500
    # 500, 1500 → Start position (x, y) near the bottom.
    # 500, 500 → End position (x, y) towards the top.
    # This simulates a swipe-up gesture, which scrolls down.

Verify Seek Bar Option From Views
    [Documentation]    Verify the "Seek Bar" element is visible. 
    Wait Until Page Contains    text=Seek Bar    timeout=5
    Wait Until Element Is Visible    //android.widget.TextView[@content-desc="Seek Bar"]    timeout=5

Click Seek Bar Option From Views
    [Documentation]    Click on the Seek Bar element.
    Click Element    //android.widget.TextView[@content-desc="Seek Bar"]

Verify Secure View Option From Views
    [Documentation]    Verify the "Secure View" element is visible.
    Wait Until Page Contains    text=Secure View    timeout=5
    Wait Until Element Is Visible    //android.widget.TextView[@content-desc="Secure View"]    timeout=5

Click Secure View Option From Views
    [Documentation]    Click on the Secure View element.
    Click Element    //android.widget.TextView[@content-desc="Secure View"]

Verify The Splitting Touches Accross Views Option From Views
    [Documentation]    Verify the "Splitting Touches Accross Views" element is visible.
    Wait Until Page Contains    text=Splitting Touches Accross Views    timeout=5
    Wait Until Element Is Visible    //android.widget.TextView[@content-desc="Splitting Touches across Views"]

Click Splitting Touches Accross Views Option From Views
    [Documentation]    Click on the "Splitting Touches Accross Views" element.
    Click Element    //android.widget.TextView[@content-desc="Splitting Touches across Views"]
