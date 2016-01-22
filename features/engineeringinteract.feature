#File: engineeringinteract.feature
#Base: none
#
#Can only provide engineering perspective to workflow
#___________________
Feature: Interacting with QA Dashboard for Engineering
	As a member of engineering
	I want to be able to contextualize workflow failure
	So that I can influence the flow of system improvements
	
	Scenario: engineer adds workflow context
		Given I am logged in as engineering
		And a workflow success rate requires more context
		When I view the workflow success rate 
		Then I should be able to specify engineering perspective of the problem