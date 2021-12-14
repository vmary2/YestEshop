*** Settings ***

Resource 	../motClesEshop.robot
Test Template	To_login_SignIn_Refused_Tel_short
Test Setup	MySetup
Test Teardown	MyTearDown


*** Test Cases ***

Inscription Telephone short_HP_Recherche non trouvée	a@gmail.com	Lasalle	abcd	Jean	1


*** Keywords ***

To_login_SignIn_Refused_Tel_short
	[Arguments] 	${Email} 	${Nom} 	${Password} 	${Prénom} 	${Téléphone}
	Aller page inscription
	Saisir informations inscription 	${Email} 	${Nom} 	${Prénom} 	${Téléphone} 	${Password}
	Verifier erreur inscription

MySetup
	OuvrirNavi 	localhost:8080/ 	headlessfirefox

MyTearDown
	FermerFirefox
