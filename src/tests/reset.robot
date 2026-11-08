*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
At start the counter is set to zero
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  0
    Click  button >> text=Aseta

When counter has a nonzero value and it is reset the value becomes zero
    Go To  ${HOME_URL}
    Click  button >> text=Paina
    Get Text  body  *=  nappia painettu 1 kertaa
    Click  button >> text=Nollaa
    Get Text  body  *=  nappia painettu 0 kertaa
