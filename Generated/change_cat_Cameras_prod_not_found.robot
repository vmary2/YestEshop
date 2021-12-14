*** Settings ***

Resource 	../motClesEshop.robot
Test Template	change_cat_Cameras_prod_not_found
Test Setup	MySetup
Test Teardown	MyTearDown


*** Test Cases ***

Connexion acceptée_HP_Recherche non trouvée	ipone


*** Keywords ***

change_cat_Cameras_prod_not_found
	[Arguments] 	${Recherche}
	Go to category 	Cameras
	Chercher produit 	${Recherche}
	Is page recherche vide

MySetup
	OuvrirNavi 	localhost:8080/ 	headlessfirefox

MyTearDown
	FermerFirefox
