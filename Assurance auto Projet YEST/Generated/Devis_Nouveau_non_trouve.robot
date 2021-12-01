*** Settings ***

Resource 	../motClesAssuranceAuto.robot
Test Template	Devis_Nouveau_non_trouve
Test Setup	MySetup
Test Teardown	MyTearDown


*** Test Cases ***



*** Keywords ***

Devis_Nouveau_non_trouve
	[Arguments] 	${Vehicule_marque} 	${Vehicule_annéeMiseEnCirculation} 	${Vehicule_modele} 	${Vehicule_carburant}
	Saisir marque 	${Vehicule_marque}
	Saisir carburant 	${Vehicule_carburant}
	Saisir modele 	${Vehicule_modele}
	Saisir annéeCirculation 	${Vehicule_annéeMiseEnCirculation}

MySetup
	OuvrirNavi 	https://demo-simulator.herokuapp.com 	Firefox

MyTearDown
	FermerFirefox
