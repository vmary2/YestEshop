*** Settings ***

Resource 	../motClesEshop.robot
Test Template	To_login_1SignIn_Accepted_No_product_in_cart_pay
Test Setup	MySetup
Test Teardown	MyTearDown


*** Test Cases ***

Inscription valide_HP_Recherche non trouvée	a@gmail.com	Le Pen	HP LP3065	abcd	Marine	1234


*** Keywords ***

To_login_1SignIn_Accepted_No_product_in_cart_pay
	[Arguments] 	${Email} 	${Nom} 	${Modèle} 	${Password} 	${Prénom} 	${Téléphone}
	Aller page inscription
	Saisir informations inscription 	${Email} 	${Nom} 	${Prénom} 	${Téléphone} 	${Password}
	Confirmer connexion
	Chercher produit 	Iphone
	Aller page first product
	Ajouter produit panier
	Aller page laptop
	Aller page produit 	${Modèle}
	Ajouter produit panier
	Aller panier
	Valider panier
	Checkout connected
	Verifier checkout success

MySetup
	OuvrirNavi 	localhost:8080/ 	headlessfirefox

MyTearDown
	FermerFirefox
