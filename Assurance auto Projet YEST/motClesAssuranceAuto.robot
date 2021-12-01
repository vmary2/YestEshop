*** Settings ***
Library           Selenium2Library

*** Keywords ***

Not Yet Implemented
    Should Be True    True    Not yet implemented
OuvrirNavi
    [Arguments]     ${URL}  ${Version}
    Open Browser    ${URL}  headlessfirefox

Saisir marque
    [Arguments]     ${marque}
    Select From List By Value   id:carBrand   ${marque}

Saisir modele
    [Arguments]     ${modele}
    Select From List By Value   id:carModel   ${modele}

Saisir carburant
    [Arguments]     ${carburant}
    Select From List By Value   id:fuelType     ${carburant}

Saisir annéeCirculation
    [Arguments]     ${Annee}
    IF  "${Annee}" == "NA"
    Select Checkbox     id:isNewCar
    ELSE
    Input Text  id:firstUseYear     ${Annee}
    END

FermerFirefox 
    Close Browser