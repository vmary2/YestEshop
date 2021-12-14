*** Settings ***

Resource 	../motClesEshop.robot
Test Template	To_login_SignIn_Refused_first_name_long
Test Setup	MySetup
Test Teardown	MyTearDown


*** Test Cases ***

Inscription Prenom long_Macbook_Recherche non trouvée	a@gmail.com	l'aide	abcd	aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa	1234


*** Keywords ***

To_login_SignIn_Refused_first_name_long
	[Arguments] 	${Email} 	${Nom} 	${Password} 	${Prénom} 	${Téléphone}
	Aller page inscription
	Saisir informations inscription 	${Email} 	${Nom} 	${Prénom} 	${Téléphone} 	${Password}
	Verifier erreur inscription

MySetup
	OuvrirNavi 	localhost:8080/ 	headlessfirefox

MyTearDown
	FermerFirefox
