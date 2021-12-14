*** Settings ***

Resource 	../motClesEshop.robot
Test Template	Add_Mac_Change_quantity_pos
Test Setup	MySetup
Test Teardown	MyTearDown


*** Test Cases ***

Connexion mail invalide_Macbook_Recherche non trouvée	MacBook
Connexion mail invalide_Macbook air_Recherche non trouvée	MacBook Air
Connexion mail invalide_Macbook pro_Recherche non trouvée	Macbook Pro


*** Keywords ***

Add_Mac_Change_quantity_pos
	[Arguments] 	${Modèle}
	Aller page laptop
	Aller page produit 	${Modèle}
	Ajouter produit panier
	Aller panier
	Changer quantité panier 	4
	Delete element panier
	Is panier vide
	Go to accueil

MySetup
	OuvrirNavi 	localhost:8080/ 	headlessfirefox

MyTearDown
	FermerFirefox
