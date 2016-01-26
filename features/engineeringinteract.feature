# File: engineeringinteract.feature
# Base: none
#
# Can only provide engineering perspective to workflow
#___________________
Feature: Interacting with QA Dashboard for Engineering
	As a member of engineering
	I want to contextualize workflow failure
	So that I can influence the flow of system improvements
	
	Scenario: engineer specified perspective should be stored in workflow success
		Given I am logged in as engineering
		When I view a workflow success
		And I specify engineering perspective of the problem
		Then the engineering perspective I specify should be stored in workflow success