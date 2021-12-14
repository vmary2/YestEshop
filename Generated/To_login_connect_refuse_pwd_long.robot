*** Settings ***

Resource 	../motClesEshop.robot
Test Template	To_login_connect_refuse_pwd_long
Test Setup	MySetup
Test Teardown	MyTearDown


*** Test Cases ***

Inscription Password long_HP_Recherche non trouvée	a@gmail.com	aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
Connexion mdp long_HP_Recherche non trouvée	a@gmail.com	1234567891011121314151617


*** Keywords ***

To_login_connect_refuse_pwd_long
	[Arguments] 	${Email} 	${Password}
	Aller page connexion
	Saisir information connexion 	${Email} 	${Password}
	Verifier erreur connexion

MySetup
	OuvrirNavi 	localhost:8080/ 	headlessfirefox

MyTearDown
	FermerFirefox
