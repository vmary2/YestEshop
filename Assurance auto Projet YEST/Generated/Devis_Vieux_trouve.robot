*** Settings ***

Resource 	../motClesAssuranceAuto.robot
Test Template	Devis_Vieux_trouve
Test Setup	MySetup
Test Teardown	MyTearDown


*** Test Cases ***

Jeu_Expérimenté_Paris_Malus_TR_Berlingo	Citroën	1970	Berlingo	Petrol
Jeu_Jeune_Paris_Malus_TR_Berlingo	Citroën	2009	Berlingo	Diesel
Jeu_Expérimenté_Paris_Bonus_TR_DS	Citroën	1976	DS	Petrol
Jeu_Jeune_Paris_Bonus_TR_DS	Citroën	1998	DS	Diesel
Jeu_Expérimenté_Paris_Bonus_TR_205	Peugeot	2010	205	Petrol
Jeu_Jeune_Paris_Bonus_TR_205	Peugeot	1972	205	Diesel
Jeu_Expérimenté_Paris_Malus_TR_208	Peugeot	1998	208	Diesel
Jeu_Jeune_Province_Malus_TR_Class B	Mercedes Benz	1983	Class B	Diesel
Jeu_Expérimenté_Province_Malus_TR_Class B	Mercedes Benz	2010	Class B	Petrol
Jeu_Jeune_Province_Malus_TR_Class C	Mercedes Benz	1981	Class C	Diesel
Jeu_Expérimenté_Province_Bonus_TR_Class C	Mercedes Benz	2010	Class C	Petrol
Jeu_Jeune_Province_Bonus_TR_Class A	Mercedes Benz	1973	Class A	Diesel
Jeu_Expérimenté_Province_Bonus_TR_Class A	Mercedes Benz	1971	Class A	Petrol
Jeu_Jeune_Province_Bonus_TR_X3	BMW	2004	X3	Diesel
Jeu_Expérimenté_Paris_Malus_TR_X3	BMW	1991	X3	Petrol
Jeu_Jeune_Paris_Bonus_Tiers_DS	Citroën	2006	DS	Diesel
Jeu_Jeune_Paris_Malus_Tiers_Class A	Mercedes Benz	2002	Class A	Petrol
Jeu_Jeune_Paris_Malus_Tiers_X3	BMW	1979	X3	Petrol
Jeu_Expérimenté_Paris_Bonus_Tiers_Berlingo	Citroën	1973	Berlingo	Petrol
Jeu_Jeune_Paris_Bonus_Tiers_Berlingo	Citroën	1979	Berlingo	Diesel
Jeu_Expérimenté_Province_Bonus_Tiers_DS	Citroën	1977	DS	Petrol
Jeu_Jeune_Province_Bonus_Tiers_205	Peugeot	2007	205	Petrol
Jeu_Expérimenté_Province_Malus_Tiers_205	Peugeot	1976	205	Diesel
Jeu_Jeune_Province_Malus_Tiers_208	Peugeot	1990	208	Diesel
Jeu_Expérimenté_Province_Malus_Tiers_Class B	Mercedes Benz	1993	Class B	Diesel
Jeu_Jeune_Province_Malus_Tiers_Class B	Mercedes Benz	1981	Class B	Petrol
Jeu_Expérimenté_Province_Bonus_Tiers_Class C	Mercedes Benz	1997	Class C	Diesel
Jeu_Jeune_Paris_Bonus_Tiers_Class C	Mercedes Benz	1978	Class C	Petrol


*** Keywords ***

Devis_Vieux_trouve
	[Arguments] 	${Vehicule_marque} 	${Vehicule_annéeMiseEnCirculation} 	${Vehicule_modele} 	${Vehicule_carburant}
	Saisir marque 	${Vehicule_marque}
	Saisir modele 	${Vehicule_modele}
	Saisir carburant 	${Vehicule_carburant}
	Saisir annéeCirculation 	${Vehicule_annéeMiseEnCirculation}

MySetup
	OuvrirNavi 	https://demo-simulator.herokuapp.com 	firefox

MyTearDown
	FermerFirefox
