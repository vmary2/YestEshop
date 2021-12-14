*** Settings ***

Resource 	../motClesEshop.robot
Test Template	To_login_connect_refuse_pwd_short
Test Setup	MySetup
Test Teardown	MyTearDown


*** Test Cases ***

Inscription Password short_HP_Recherche non trouvée	a@gmail.com	a
Connexion mdp court_HP_Recherche non trouvée	a@gmail.com	123


*** Keywords ***

To_login_connect_refuse_pwd_short
	[Arguments] 	${Email} 	${Password}
	Aller page connexion
	Saisir information connexion 	${Email} 	${Password}
	Verifier erreur connexion

MySetup
	OuvrirNavi 	localhost:8080/ 	headlessfirefox

MyTearDown
	FermerFirefox
