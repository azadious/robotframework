*** Settings ***
Documentation     Test Read Local File
Library           SeleniumLibrary
Library           ReadCSV.py


*** Test Cases ***
Read File
    @{LIST} =  read csv file   /home/nantawat/Desktop/robot/tests/list.csv
    FOR  ${web}  IN  @{LIST}
      Log  ${web[0]}
      Open Browser    ${web[0]}    Chrome
      Input Text    userName    ${web[1]}
      Input Text    password    ${web[2]}
      Click Button    css:button.btn
      Title Should Be    SILVERMAN
      Sleep   5s
      [Teardown]    Close Browser
    END