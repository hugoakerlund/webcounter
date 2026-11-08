*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
At start the counter is set to zero
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  0
    Click  button >> text=Aseta

When form is submitted with a value counter is set to the given value
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  10
    Click  button >> text=Aseta
    Get Text  body  *=  nappia painettu 10 kertaa
    Fill Text  input[name="value"]  10000
    Click  button >> text=Aseta
    Get Text  body  *=  nappia painettu 10000 kertaa
