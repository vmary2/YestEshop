*** Settings ***

Resource 	../motClesEshop.robot
Test Template	To_login_Refused_tel_long
Test Setup	MySetup
Test Teardown	MyTearDown


*** Test Cases ***

Inscription Telephone long_Macbook_Recherche trouvé	a@gmail.com	Schiappa	abcd	Marlène	223164996269959556218148151481471418418141584592518145814817481


*** Keywords ***

To_login_Refused_tel_long
	[Arguments] 	${Email} 	${Nom} 	${Password} 	${Prénom} 	${Téléphone}
	Aller page inscription
	Saisir informations inscription 	${Email} 	${Nom} 	${Prénom} 	${Téléphone} 	${Password}
	Verifier erreur inscription

MySetup
	OuvrirNavi 	localhost:8080/ 	headlessfirefox

MyTearDown
	FermerFirefox
