*** Settings ***
Library           Selenium2Library

*** Keywords ***

Not Yet Implemented
    Should Be True    True    Not yet implemented

OuvrirNavi
    [Arguments]     ${URL}  ${Version}
    Open Browser    ${URL}  headlessfirefox

Aller page inscription
    Click Element   xpath=//*[@id="top-links"]/ul/li[2]
    Click Element   xpath=//*[@id="top-links"]/ul/li[2]/ul/li[1]/a

Saisir informations inscription
    [Arguments]     ${email}    ${nom}  ${prenom}   ${tel}  ${mdp}
    Input Text      id:input-firstname  ${prenom}
    Input Text      id:input-lastname   ${nom}
    Input Text      id:input-email   ${email}
    Input Text      id:input-telephone   ${tel}
    Input Password      id:input-password   ${mdp}
    Input Password      id:input-confirm    ${mdp}
    Click Element       xpath=//*[@id="content"]/form/div/div/input[1]
    Click Element       xpath=//*[@id="content"]/form/div/div/input[2]

Confirmer inscription
    ${url}=     Get Location
    ${urlShould}=   'http://localhost:8080/index.php?route=account/success'
    Should Be Equal As String   ${url}  ${urlShould}

Verifier erreur inscription
    ${url}=     Get Location
    ${urlShould}=   'http://localhost:8080/index.php?route=account/register'
    Should Be Equal As String   ${url}  ${urlShould}

Aller page connexion
    Click Element   xpath=//*[@id="top-links"]/ul/li[2]
    Click Element   xpath=//*[@id="top-links"]/ul/li[2]/ul/li[2]/a

Saisir information connexion
    [Arguments]     ${email}    ${mdp}
    Input Text      id:input-email  ${email}
    Input Password      id:input-password   ${mdp}

Confirmer connexion
    ${url}=     Get Location
    ${urlShould}=   'http://localhost:8080/index.php?route=account/account'
    Should Be Equal As String   ${url}  ${urlShould}

Verifier erreur connexion
    ${url}=     Get Location
    ${urlShould}=   'http://localhost:8080/index.php?route=account/login'
    Should Be Equal As String   ${url}  ${urlShould}

Chercher produit
    [Arguments]     ${nomProdui}
    Input Text      xpath=//*[@id="search"]/input   ${nomProdui}
    Click Element   xpath=//*[@id="search"]/span/button

Aller page laptop
    Click Element   xpath=//*[@id="menu"]/div[2]/ul/li[2]/a
    Click Element   xpath=//*[@id="menu"]/div[2]/ul/li[2]/div/a

Aller page produit
    [Arguments]     ${item}
    Click Link      link=${item}

Ajouter produit panier
    Click Element   id:button-cart

Aller panier
    Click Element   id:cart-total
    Click Element   xpath=//*[@id="cart"]/ul/li[2]/div/p/a[1]

Valider panier
    Click Element   xpath=//*[@id="content"]/div[3]/div[2]/a

Checkout guest
    Click Element   id:button-account
    Input Text      id:input-payment-firstname  Jean-Michel
    Input Text      id:input-payment-lastname   Hufflen
    Input Text      id:input-payment-email  jmh@edu.univ-fcomte.fr
    Input Text      id:input-payment-telephone  123456
    Input Text      id:input-payment-address-1  16 route de Gray
    Input Text      id:input-payment-city   Besançon
    Input Text      id:input-payment-postcode   25000
    Select From List By Value   id:input-payment-country    France, Metropolitan
    Select From List By Value   id:input-payment-zone   Doubs
    Click Element   id:button-guest
    Click Element   id:button-shipping-method
    Click Element   xpath=//*[@id="collapse-payment-method"]/div/div[2]/div/input[1]
    Click Element   id:button-payment-method
    Click Element   id:button-confirm

Checkout connected
    Input Text      id:input-payment-firstname  Jean-Michel
    Input Text      id:input-payment-lastname   Hufflen
    Input Text      id:input-payment-email  jmh@edu.univ-fcomte.fr
    Input Text      id:input-payment-telephone  123456
    Input Text      id:input-payment-address-1  16 route de Gray
    Input Text      id:input-payment-city   Besançon
    Input Text      id:input-payment-postcode   25000
    Select From List By Value   id:input-payment-country    France, Metropolitan
    Select From List By Value   id:input-payment-zone   Doubs
    Click Element   id:button-guest
    Click Element   id:button-shipping-method
    Click Element   xpath=//*[@id="collapse-payment-method"]/div/div[2]/div/input[1]
    Click Element   id:button-payment-method
    Click Element   id:button-confirm


FermerFirefox 
    Close Browser