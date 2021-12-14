*** Settings ***

Resource 	../motClesEshop.robot
Test Template	To_login_SignIn_Refused_invalid_email
Test Setup	MySetup
Test Teardown	MyTearDown


*** Test Cases ***

Inscription Email short_Macbook_Recherche non trouvée	a	Macron	abcd	Emmanuel	1234
Inscription Email long_Macbook_Recherche non trouvée	a	Zemmour	abcd	Eric	1234


*** Keywords ***

To_login_SignIn_Refused_invalid_email
	[Arguments] 	${Email} 	${Nom} 	${Password} 	${Prénom} 	${Téléphone}
	Aller page inscription
	Saisir informations inscription 	${Email} 	${Nom} 	${Prénom} 	${Téléphone} 	${Password}
	Verifier erreur inscription

MySetup
	OuvrirNavi 	localhost:8080/ 	headlessfirefox

MyTearDown
	FermerFirefox
