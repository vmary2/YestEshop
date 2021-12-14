*** Settings ***

Resource 	../motClesEshop.robot
Test Setup	MySetup
Test Teardown	MyTearDown


*** Test Cases ***

change_cat_Tablets_prod_found
	Go to category 	Tablets
	Chercher produit 	iphone
	Aller page first product
	Ecrire une review


*** Keywords ***


MySetup
	OuvrirNavi 	localhost:8080/ 	headlessfirefox

MyTearDown
	FermerFirefox
