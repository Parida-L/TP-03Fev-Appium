*** Settings ***
Resource           ../pages/home_page.robot
Resource           ../pages/views_page.robot
Resource           ../pages/animation_page.robot

*** Test Cases ***
#GHERKIN
Scenario: Test The Hyperspace Animation From The ApiDemos APK
    [Documentation]    This is a test to verify the ApiDemos APK with Appium
    Given I Am On The ApiDemos APK Views Page
    When I Click On The 'Animation' Option
    And I Select Hyperspace From The Push Option
    Then A Quote From Albert Camus Is Displayed

Scenario: Test The Chronometer From The ApiDemos APK
    [Documentation]    This is a test to verify the Chronometer from the ApiDemos APK
    Given I Am On The Chronometer Option Of The Views Page
#     When I Click On The Start Button
#     And I Click On The Set Format String Button
#     Then The Chronometer Format Has Changed
#     And The Chronometer Is Still Running

# Scenario: Test The Seek Bar From The ApiDemos APK
#     [Documentation]    This is a test to verify the Seek Bar from the ApiDemos APK
#     Given I Am On The Seek Bar Option Of The Views Page
#     When I Move The Seek Bar To 88
#     Then The Seek Bar Value Has Changed

# Scenario: Test The Secure View From The ApiDemos APK
#     [Documentation]    This is a test to verify the Secure View from the ApiDemos APK
#     Given I Am On The Secure View Option Of The Views Page
#     When I Click On Pop Toast Button
