*** Settings ***

Resource 	../motClesEshop.robot
Test Template	Add_Windows_Change_quantity_neg
Test Setup	MySetup
Test Teardown	MyTearDown


*** Test Cases ***

Connexion acceptée_HP_Recherche trouvé	HP LP3065
Connexion acceptée_SONY_Recherche trouvé	SONY VAIO


*** Keywords ***

Add_Windows_Change_quantity_neg
	[Arguments] 	${Modèle}
	Aller page laptop
	Aller page produit 	${Modèle}
	Ajouter produit panier
	Aller panier
	Changer quantité panier 	-1
	Is panier vide
	Go to accueil

MySetup
	OuvrirNavi 	localhost:8080/ 	headlessfirefox

MyTearDown
	FermerFirefox
