*** Settings ***
Library           Selenium2Library

*** Keywords ***

Not Yet Implemented
    Should Be True    True    Not yet implemented
OuvrirNavi
    [Arguments]     ${URL}  ${Version}
    Open Browser    ${URL}  headlessfirefox

Saisir informations inscription
    [Arguments]     ${email}    ${nom}  ${prenom}   ${tel}  ${mdp}
    Not Yet Implemented

Confirmer inscription
    Not Yet Implemented

Saisir information connexion
    [Arguments]     ${email}    ${mdp}
    Not Yet Implemented

Confirmer connexion
    Not Yet Implemented

Chercher produit
    [Arguments]     ${nomProdui}
    Not Yet Implemented

Selectionner produit
    Not Yet Implemented

Ajouter produit panier
    Not Yet Implemented

Aller panier
    Not Yet Implemented

Valider panier
    Not Yet Implemented

FermerFirefox 
    Close Browser