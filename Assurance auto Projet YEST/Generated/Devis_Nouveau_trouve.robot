*** Settings ***

Resource 	../motClesAssuranceAuto.robot
Test Template	Devis_Nouveau_trouve
Test Setup	MySetup
Test Teardown	MyTearDown


*** Test Cases ***

Jeu_Expérimenté_Paris_Malus_TR_M2	BMW	NA	M2	Diesel
Jeu_Expérimenté_Paris_Malus_TR_C1	Citroën	NA	C1	Petrol
Jeu_Expérimenté_Paris_Malus_TR_C3	Citroën	NA	C3	Petrol
Jeu_Expérimenté_Province_Bonus_TR_308	Peugeot	NA	308	Petrol
Jeu_Jeune_Province_Bonus_TR_308	Peugeot	NA	308	Diesel
Jeu_Expérimenté_Province_Bonus_TR_GLA	Mercedes Benz	NA	GLA	Petrol
Jeu_Jeune_Province_Bonus_TR_GLB	Mercedes Benz	NA	GLB	Petrol
Jeu_Expérimenté_Province_Malus_TR_GLC	Mercedes Benz	NA	GLC	Petrol


*** Keywords ***

Devis_Nouveau_trouve
	[Arguments] 	${Vehicule_marque} 	${Vehicule_annéeMiseEnCirculation} 	${Vehicule_modele} 	${Vehicule_carburant}
	Saisir marque 	${Vehicule_marque}
	Saisir modele 	${Vehicule_modele}
	Saisir carburant 	${Vehicule_carburant}
	Saisir annéeCirculation 	${Vehicule_annéeMiseEnCirculation}

MySetup
	OuvrirNavi 	https://demo-simulator.herokuapp.com 	firefox

MyTearDown
	FermerFirefox
