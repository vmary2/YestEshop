*** Settings ***
Library  Selenium2Library

*** Test Cases ***
TC_Example
    Open Browser     https://www.google.com	firefox
	Maximize Browser Window
	Wait Until Element Is Visible	xpath=//*[@id="L2AGLb"]
	click Button	 xpath=//*[@id="L2AGLb"]
    Input Text       xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input    Génie Logiciel
    Click Button     xpath=//*[@id="gbqfbb"] 
	Close Browser