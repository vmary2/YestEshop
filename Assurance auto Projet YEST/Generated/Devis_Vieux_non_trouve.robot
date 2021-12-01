*** Settings ***

Resource 	../motClesAssuranceAuto.robot
Test Template	Devis_Vieux_non_trouve
Test Setup	MySetup
Test Teardown	MyTearDown


*** Test Cases ***

Jeu_Véhicule non trouvé	Citroën	1972	C3	Petrol


*** Keywords ***

Devis_Vieux_non_trouve
	[Arguments] 	${Vehicule_marque} 	${Vehicule_annéeMiseEnCirculation} 	${Vehicule_modele} 	${Vehicule_carburant}
	Saisir marque 	${Vehicule_marque}
	Saisir modele 	${Vehicule_modele}
	Saisir carburant 	${Vehicule_carburant}
	Saisir annéeCirculation 	${Vehicule_annéeMiseEnCirculation}

MySetup
	OuvrirNavi 	https://demo-simulator.herokuapp.com 	firefox

MyTearDown
	FermerFirefox
