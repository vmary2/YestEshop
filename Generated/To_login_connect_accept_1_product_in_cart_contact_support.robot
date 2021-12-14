*** Settings ***

Resource 	../motClesEshop.robot
Test Template	To_login_connect_accept_1_product_in_cart_contact_support
Test Setup	MySetup
Test Teardown	MyTearDown


*** Test Cases ***

Inscription valide_Macbook_Recherche non trouvée	a@gmail.com	MacBook	abcd
Inscription valide_Macbook air_Recherche non trouvée	a@gmail.com	MacBook Air	abcd
Inscription valide_Macbook pro_Recherche non trouvée	a@gmail.com	Macbook Pro	abcd
Connexion acceptée_Macbook_Recherche non trouvée	a@gmail.com	MacBook	1234
Connexion acceptée_Macbook air_Recherche non trouvée	a@gmail.com	MacBook Air	1234
Connexion acceptée_Macbook pro_Recherche non trouvée	a@gmail.com	Macbook Pro	1234


*** Keywords ***

To_login_connect_accept_1_product_in_cart_contact_support
	[Arguments] 	${Email} 	${Modèle} 	${Password}
	Aller page connexion
	Saisir information connexion 	${Email} 	${Password}
	Confirmer connexion
	Aller page laptop
	Aller page produit 	${Modèle}
	Ajouter produit panier
	Aller panier
	Valider panier
	Checkout Connected Error
	Checkout inquiry

MySetup
	OuvrirNavi 	localhost:8080/ 	headlessfirefox

MyTearDown
	FermerFirefox
