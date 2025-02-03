*** Settings ***
Resource           ../resources/libraries.resource

*** Variables ***
${APPIUM_SERVER_GUI}   http://localhost:4723/wd/hub
${APPIUM_SERVER}       http://localhost:4723
${PLATFORM_NAME}       Android
${PLATFORM_VERSION}    15
${DEVICE_NAME}         emulator-5554
${AUTOMATION_NAME}     UiAutomator2
${APP_PACKAGE_API}     io.appium.android.apis
${APP_ACTIVITY_API}    io.appium.android.apis.ApiDemos
${APP_PATH}            C:/Users/Administrateur/AppData/Local/Android/Sdk/platform-tools/ApiDemos-debug.apk

*** Keywords ***
#GHERKIN KEYWORDS    



#SOUS KEYWORDS

I Launch The APIDemos App
    [Documentation]    Launch the application.
    Start Appium Session    ${APP_PACKAGE_API}    ${APP_ACTIVITY_API}

Start Appium Session
    [Documentation]    Démarrer une session Appium en utilisant la configuration.
    [Arguments]    ${app_package}    ${app_activity}
    Open Application    ${APPIUM_SERVER}
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    automationName=${AUTOMATION_NAME}
    ...    appPackage=${app_package}
    ...    appActivity=${app_activity}
    # ...    app=${APP_PATH}

Stop Appium Session
    [Documentation]    Arrêter la session Appium.
    Capture Page Screenshot
    Close Application      

Verify The Views Element From The Home Page
    [Documentation]    Verify the "Views" element is visible.
    Wait Until Page Contains    text=Views    timeout=5
    Wait Until Element Is Visible    //android.widget.TextView[@content-desc="Views"]    timeout=5

Verify The Animation Element From Home Page
    [Documentation]    Verify the "Animation" element is visible.
    Wait Until Page Contains    text=Animation    timeout=5
    Wait Until Element Is Visible    //android.widget.TextView[@content-desc="Animation"]    timeout=5

Click On The Views Button From The Home Page
    [Documentation]    Click on the Views button.
    Click Element    xpath=//android.widget.TextView[@content-desc="Views"]

Click On The Animation Button From The Home Page
    [Documentation]    Click on the Animation button.
    Click Element    xpath=//android.widget.TextView[@content-desc="Animation"]
