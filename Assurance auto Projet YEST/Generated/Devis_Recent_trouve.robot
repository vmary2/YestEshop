*** Settings ***

Resource 	../motClesAssuranceAuto.robot
Test Template	Devis_Recent_trouve
Test Setup	MySetup
Test Teardown	MyTearDown


*** Test Cases ***

Jeu_Expérimenté_Paris_Malus_TR_308	Peugeot	2018	308	Diesel
Jeu_Jeune_Paris_Malus_TR_308	Peugeot	2012	308	Petrol
Jeu_Expérimenté_Paris_Malus_TR_508 SW	Peugeot	2018	508 SW	Petrol
Jeu_Jeune_Province_Malus_TR_Class B	Mercedes Benz	2016	Class B	Diesel
Jeu_Expérimenté_Paris_Bonus_TR_Class C	Mercedes Benz	2001	Class C	Petrol
Jeu_Jeune_Paris_Bonus_TR_Class A	Mercedes Benz	2013	Class A	Diesel
Jeu_Expérimenté_Paris_Bonus_TR_Berlingo	Citroën	2017	Berlingo	Petrol
Jeu_Jeune_Paris_Bonus_TR_Berlingo	Citroën	2020	Berlingo	Diesel
Jeu_Expérimenté_Province_Bonus_TR_Class C	Mercedes Benz	2012	Class C	Diesel
Jeu_Jeune_Province_Bonus_TR_Class A	Mercedes Benz	2012	Class A	Petrol
Jeu_Expérimenté_Province_Bonus_TR_508 SW	Peugeot	2014	508 SW	Diesel
Jeu_Jeune_Province_Bonus_TR_Class B	Mercedes Benz	2014	Class B	Petrol
Jeu_Expérimenté_Province_Malus_TR_M8	BMW	2012	M8	Diesel
Jeu_Jeune_Province_Malus_TR_M8	BMW	2015	M8	Petrol
Jeu_Jeune_Paris_Malus_Tiers_M8	BMW	2020	M8	Diesel
Jeu_Expérimenté_Paris_Malus_Tiers_M8	BMW	2012	M8	Petrol
Jeu_Jeune_Paris_Malus_Tiers_Berlingo	Citroën	2015	Berlingo	Petrol
Jeu_Expérimenté_Paris_Bonus_Tiers_Berlingo	Citroën	2012	Berlingo	Diesel
Jeu_Jeune_Paris_Bonus_Tiers_308	Peugeot	2016	308	Diesel
Jeu_Expérimenté_Paris_Bonus_Tiers_308	Peugeot	2014	308	Petrol
Jeu_Jeune_Paris_Bonus_Tiers_508 SW	Peugeot	2015	508 SW	Diesel
Jeu_Expérimenté_Province_Malus_Tiers_508 SW	Peugeot	2015	508 SW	Petrol
Jeu_Jeune_Province_Malus_Tiers_Class B	Mercedes Benz	2019	Class B	Diesel
Jeu_Jeune_Province_Malus_Tiers_Class C	Mercedes Benz	2013	Class C	Diesel
Jeu_Expérimenté_Province_Bonus_Tiers_Class C	Mercedes Benz	2015	Class C	Petrol
Jeu_Jeune_Province_Bonus_Tiers_Class A	Mercedes Benz	2015	Class A	Diesel
Jeu_Expérimenté_Province_Bonus_Tiers_Class A	Mercedes Benz	2020	Class A	Petrol


*** Keywords ***

Devis_Recent_trouve
	[Arguments] 	${Vehicule_marque} 	${Vehicule_annéeMiseEnCirculation} 	${Vehicule_modele} 	${Vehicule_carburant}
	Saisir marque 	${Vehicule_marque}
	Saisir modele 	${Vehicule_modele}
	Saisir carburant 	${Vehicule_carburant}
	Saisir annéeCirculation 	${Vehicule_annéeMiseEnCirculation}

MySetup
	OuvrirNavi 	https://demo-simulator.herokuapp.com 	firefox

MyTearDown
	FermerFirefox
