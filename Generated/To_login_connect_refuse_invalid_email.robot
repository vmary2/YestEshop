*** Settings ***

Resource 	../motClesEshop.robot
Test Template	To_login_connect_refuse_invalid_email
Test Setup	MySetup
Test Teardown	MyTearDown


*** Test Cases ***

Inscription Email short_HP_Recherche non trouvée	a	abcd
Connexion mail invalide_HP_Recherche non trouvée	a	1234


*** Keywords ***

To_login_connect_refuse_invalid_email
	[Arguments] 	${Email} 	${Password}
	Aller page connexion
	Saisir information connexion 	${Email} 	${Password}
	Verifier erreur connexion

MySetup
	OuvrirNavi 	localhost:8080/ 	headlessfirefox

MyTearDown
	FermerFirefox
