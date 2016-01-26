# File: automation.feature
# Base: none
#
# Basic automation for QA dashboard tasks not triggered by human interaction
#___________________
Feature: Automation with QA dashboard
	As a member of management
	I want the QA dashboard to handle routine calculations
	So that I can focus on the qualitative aspects of decision making

	Scenario: low success rate workflows are marked as critical
		Given new data has been pulled from truth
		When a workflow has low success rate
		Then the workflow should be marked as critical

	Scenario: high risk score workflows are marked as critical
		Given new data has been pulled from truth
		And the workflow has a user impact score
		When a workflow has a high risk score
		Then the workflow should be marked as critical