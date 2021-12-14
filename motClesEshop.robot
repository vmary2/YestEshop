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
    Sleep   2s
    Click Element   xpath=//*[@id="top-links"]/ul/li[2]/ul/li[1]/a
    Sleep   2s

Saisir informations inscription
    [Arguments]     ${email}    ${nom}  ${prenom}   ${tel}  ${mdp}
    Input Text      id:input-firstname  ${prenom}
    Input Text      id:input-lastname   ${nom}
    Input Text      id:input-email   ${email}
    Input Text      id:input-telephone   ${tel}
    Input Password      id:input-password   ${mdp}
    Input Password      id:input-confirm    ${mdp}
    Sleep   2s
    Click Element       xpath=//*[@id="content"]/form/div/div/input[1]
    Sleep   2s
    Click Element       xpath=//*[@id="content"]/form/div/div/input[2]
    Sleep   2s

Confirmer inscription
    ${url}=     Get Location
    ${urlShould}    Set Variable    http://localhost:8080/index.php?route=account/success
    Should Be Equal As Strings  ${url}  ${urlShould}

Verifier erreur inscription
    ${url}=     Get Location
    ${urlShould}    Set Variable    http://localhost:8080/index.php?route=account/register
    Should Be Equal As Strings  ${url}  ${urlShould}

Aller page connexion
    Click Element   xpath=//*[@id="top-links"]/ul/li[2]
    Sleep   1s
    Click Element   xpath=//*[@id="top-links"]/ul/li[2]/ul/li[2]/a
    Sleep   1s

Saisir information connexion
    [Arguments]     ${email}    ${mdp}
    Input Text      id:input-email  ${email}
    Input Password      id:input-password   ${mdp}

Confirmer connexion
    ${url}=     Get Location
    ${urlShould}    Set Variable    http://localhost:8080/index.php?route=account/account
    Should Be Equal As Strings  ${url}  ${urlShould}

Verifier erreur connexion
    ${url}=     Get Location
    ${urlShould}    Set Variable    http://localhost:8080/index.php?route=account/login
    Should Be Equal As Strings  ${url}  ${urlShould}

Verifier checkout success
    ${url}=     Get Location
    ${urlShould}    Set Variable    http://localhost:8080/index.php?route=checkout/success
    Should Be Equal As Strings  ${url}  ${urlShould}

Chercher produit
    [Arguments]     ${nomProdui}
    Input Text      xpath=//*[@id="search"]/input   ${nomProdui}
    Click Element   xpath=//*[@id="search"]/span/button
    Sleep   2s

Aller page laptop
    Click Element   xpath=//*[@id="menu"]/div[2]/ul/li[2]/a
    Sleep   2s
    Click Element   xpath=//*[@id="menu"]/div[2]/ul/li[2]/div/a
    Sleep   2s

Aller page first product
    Sleep   2s
    Click Element   xpath=//*[@id="content"]/div[2]/div/div/div[1]
    Sleep   2s

Aller page produit
    [Arguments]     ${item}
    Click Link      link=${item}

Ajouter produit panier
    Wait Until Keyword Succeeds     2min    5s  Click Element   id:button-cart
    Sleep   3s 

Aller panier
    Wait Until Keyword Succeeds     2min    5s  Click Element   id:cart-total 
    Sleep   2s
    Click Link      xpath=//*[@id="cart"]/ul/li[2]/div/p/a[1]
    Sleep   2s
Valider panier
    Click Element   xpath=//*[@id="content"]/div[3]/div[2]/a
    Sleep   2s

Go to accueil
    Click Element   xpath=//*[@id="logo"]/h1/a
    Sleep   2s

Checkout guest
    Click Element   id:button-account
    Sleep   2s
    Input Text      id:input-payment-firstname  Jean-Michel
    Input Text      id:input-payment-lastname   Hufflen
    Input Text      id:input-payment-email  jmh@edu.univ-fcomte.fr
    Input Text      id:input-payment-telephone  123456
    Input Text      id:input-payment-address-1  16 route de Gray
    Input Text      id:input-payment-city   Besançon
    Input Text      id:input-payment-postcode   25000
    Select From List By Value   id:input-payment-country    France, Metropolitan
    Select From List By Value   id:input-payment-zone   Doubs
    Sleep   2s
    Click Element   id:button-guest
    Sleep   2s
    Click Element   id:button-shipping-method
    Sleep   2s
    Click Element   xpath=//*[@id="collapse-payment-method"]/div/div[2]/div/input[1]
    Sleep   2s
    Click Element   id:button-payment-method
    Sleep   2s
    Click Element   id:button-confirm
    Sleep   2s

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
    Sleep   2s
    Click Element   id:button-payment-address
    Sleep   2s
    Click Element   id:button-shipping-method
    Sleep   2s
    Click Element   xpath=//*[@id="collapse-payment-method"]/div/div[2]/div/input[1]
    Sleep   2s
    Click Element   id:button-payment-method
    Sleep   2s
    Click Element   id:button-confirm
    Sleep   2s

Checkout Connected Error
    Input Text      id:input-payment-firstname  Jean-Michel
    Input Text      id:input-payment-lastname   Hufflen
    Input Text      id:input-payment-email  jmh@edu.univ-fcomte.fr
    Input Text      id:input-payment-telephone  123456
    Input Text      id:input-payment-address-1  16 route de Gray
    Input Text      id:input-payment-city   Besançon
    Input Text      id:input-payment-postcode   25000
    Select From List By Value   id:input-payment-country    France, Metropolitan
    Select From List By Value   id:input-payment-zone   Doubs
    Sleep   2s
    Click Element   id:button-payment-address
    Sleep   2s
    Click Link      link=contact us
    Sleep   2s

Checkout inquiry
    Input Text      id:input-enquiry    Bonjour j'ai un socis
    Sleep   2s
    Click Element   xpath=//*[@id="content"]/form/div/div/input
    Sleep   2s

Changer quantité panier
    [Arguments]     ${quantity}
    Input Text      xpath=//*[@id="content"]/form/div/table/tbody/tr/td[4]/div/input    ${quantity}
    Sleep   2s
    Click Element   xpath=//*[@id="content"]/form/div/table/tbody/tr/td[4]/div/span/button[1]/i
    Sleep   2s
    Page Should Contain Element     xpath=//*[@id="checkout-cart"]/div[1]

Delete element panier
    Click Element   xpath=//*[@id="content"]/form/div/table/tbody/tr/td[4]/div/span/button[2]
    Sleep   2s

Is panier vide
    Sleep   2s
    Page Should Contain Element     xpath=//*[@id="content"]/p

Go to category
    [Arguments]     ${category}
    Click Link      link=${category}
    Sleep   2s

Ecrire une review
    Click Element   xpath=//*[@id="content"]/div/div[2]/div[3]/p/a[2]
    Sleep   2s
    Input Text      id:input-name   Oui
    Input Text      id:input-review     Ce produit est vraiment trop cool oui oui oui oui
    Sleep   2s
    Click Element   xpath=//*[@id="form-review"]/div[4]/div/input[5]
    Sleep   2s
    Click Element   id:button-review
    Sleep   2s
    Page Should Contain Element     xpath=//*[@id="form-review"]/div[2]/text()

Is page recherche vide
    Page Should Contain Element     xpath=//*[@id="content"]/p[2]

Disconnect
    Click Element   xpath=//*[@id="top-links"]/ul/li[2]/a/i
    Sleep   2s
    Click Link      link=logout
    Sleep   2s

FermerFirefox 
    Close Browser