#File: automation.feature
#Base: none
#
#Basic automation feature
#___________________
Feature: Automating the QA Dashboard
	As a member of management
	I want to have routine and standardizable tasks automated
	So that I can focus on other crucial points of management
	
    Scenario: dashboard data is refreshed daily
	  	Given the dashboard is linked to a valid database
	  	When 24 hours have passed
	  	Then the dashboard should reflect the new state of database

	Scenario: dashboard notifies members assigned to a workflow
	  	Given the dashboard has access to e-mail
	  	And the assignment was valid
	  	When a manager assigns a workflow to a member 
	  	Then the member is emailed a notification