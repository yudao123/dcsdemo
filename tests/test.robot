*** Settings ***
Library           Process

*** Variables ***
${main_script}    src/main.py

*** Test Cases ***
Case1
    ${result}=    Run Main Script    1
    Should Be Equal    ${result}    0.5

Case2
    ${result}=    Run Main Script    2
    ${result}=    Convert To Number    ${result}    3
    Should Be Equal As Strings    ${result}    0.667

Case3
    ${result}=    Run Main Script    10
    ${result}=    Convert To Number    ${result}    3
    Should Be Equal As Strings    ${result}    0.618

*** Keywords ***
Run Main Script
    [Arguments]    ${arg}
    Run Process    python    src/main.py    ${arg}    alias=proc
    ${result}=    Get Process Result    proc
    [Return]    ${result.stdout}
