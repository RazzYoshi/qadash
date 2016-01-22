#File: managementinteract.feature
#Base: none
#
#Basic interaction feature
#___________________
Feature: Interacting with QA Dashboard for Management
	As a member of management
	I want to be able to contextualize workflow failure
	So that I can control the flow of system improvements
	
	Scenario: manager adds workflow context
		Given I am logged in as management
		And a workflow success rate requires more context
		When I view the workflow success rate 
		Then I should be able to specify known issues that affect this workflow
		And I should be able to specify impact on users
		And I should be able to specify history of issues with this workflow