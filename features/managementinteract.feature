#File: managementinteract.feature
#Base: none
#
#Basic interaction feature
#___________________
Feature: Interacting with QA Dashboard for Management
	As a member of management
	I want to contextualize workflow failure
	So that I can control the flow of system improvements
	
	Scenario: manager specified known issues are stored in workflow success
		Given I am logged in as management
		When I view a workflow success
		And I specify known issues that affect the workflow
		Then the issues I specify should be stored in workflow success

	Scenario: manager specified history of issues is stored in workflow success
		Given I am logged in as management
		When I view a workflow success
		And I specify history of issues with the workflow
		Then the history I specify should be stored in workflow success

	Scenario: manager assigned impact score is stored in workflow success
		Given I am logged in as management
		When I view a workflow success
		And I assign a user impact score
		Then the impact score I assign should be stored in workflow success
		And a risk score should be calculated
		And the risk score should be stored in workflow success