*** Settings ***
Resource           ../resources/libraries.resource
Resource           ../pages/home_page.robot

*** Variables ***
${IMG_SWITCHER_OPTION}        //android.widget.TextView[@content-desc="ImageSwitcher"]
${SECURE_VIEW_OPTION}         //android.widget.TextView[@content-desc="Secure View"]
${SEEK_BAR_OPTION}            //android.widget.TextView[@content-desc="Seek Bar"]
${SPLITTING_TOUCHES_OPTION}   //android.widget.TextView[@content-desc="Splitting Touches across Views"]
${ANIMATION_OPTION}           //android.widget.TextView[@content-desc="Animation"]
${POP_TOAST_BUTTON}           //android.widget.Button[@content-desc="Pop toast"]
${DONT_CLICK_BUTTON}          //android.widget.Button[@content-desc="Don't click"]
${OOPS_BUTTON}                //android.widget.Button[@resource-id="android:id/button3"]
${POP_MESSAGE}                //android.widget.TextView[@resource-id="android:id/message"]
${FIRST_MESSAGE}              Transferred $1 

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

I Am On The Secure View Option Of The Views Page
    [Documentation]    Open the Secure View option from the Views page.
    I Am On The ApiDemos APK Views Page
    Scroll To The Secure View Option From The Views Page
    Verify Secure View Option From Views
    Click Secure View Option From Views

I Click On Pop Toast Button
    [Documentation]    Click on the "Pop Toast" button.
    Wait Until Page Contains    text=Pop toast    timeout=5
    Click Element    ${POP_TOAST_BUTTON}
    Sleep    2
    
I Click The First Button
    [Documentation]    Click on the first button.
    Wait Until Page Contains    text=Unfiltered demo   timeout=5
    Wait Until Page Contains    text=Don't click   timeout=5
    Click Element    //android.widget.Button[@resource-id="io.appium.android.apis:id/secure_view_unsecure_button"]

# A Toast Message Is Displayed
#     [Documentation]    Verify a toast message is displayed.
#     Wait Until Page Contains    text=Oh no    timeout=5
#     #GET TEXT OF THE ELEMENT ${POP_MESSAGE} UNTIL IT MATCHES ${FIRST_MESSAGE}              Transferred $1 
#     Click Element    //android.widget.Button[@resource-id="android:id/button3"]

# The Same Message Reappears After 5 Tries
#     [Documentation]    Verify the same message reappears after 5 tries.
#     I Click The First Button
    
# The First Message Reappears
#     [Documentation]    Verify the first message reappears.
#     [Arguments]    ${message}
#     Wait Until Page Contains    text=Unfiltered demo   timeout=5
#     Wait Until Page Contains    text=Don't click   timeout=5
#     Click Element    //android.widget.Button[@resource-id="io.appium.android.apis:id/secure_view_unsecure_button"]
#     Wait Until Page Contains    text=Oh no    timeout=5
#     Wait Until Page Contains Element    ${POP_MESSAGE}    timeout=5
#     ${pop_message} =    Get Text    ${POP_MESSAGE}
#     Should Be Equal As Strings    ${pop_message}    ${message}
#     # Verify the pop message is equal to "Transferred" then OK otherwise, do it again
#     Click Element    //android.widget.Button[@resource-id="android:id/button3"]



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

Scroll To The Secure View Option From The Views Page
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
