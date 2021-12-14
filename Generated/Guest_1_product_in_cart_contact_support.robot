*** Settings ***

Resource 	../motClesEshop.robot
Test Template	Guest_1_product_in_cart_contact_support
Test Setup	MySetup
Test Teardown	MyTearDown


*** Test Cases ***

Guest_Macbook_Recherche trouvé	MacBook


*** Keywords ***

Guest_1_product_in_cart_contact_support
	[Arguments] 	${Modèle}
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
