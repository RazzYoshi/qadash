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
	  	And I should be able to specify engineering perspective of the problem
	  	And I should be able to specify history of issues with this workflow
	  	And I should be able to specify a list of top reasons this workflow 
	  	has failed
	  	And I should be able to specify whether the issue is an abort or a fail
	
	Scenario: manager assigns responsibilities for workflow failures
	    Given I am logged in as management
	    And a workflow is showing suboptimal success rate
	    When I view the workflow success rate
	    Then I should be able to tag members to this workflow

	Scenario: manager contacts responsibility holders for workflow
	    Given I am logged in as management
	    And a workflow has associated members
	    When I view the workflow success rate
	    Then I should be able to ping members associated with this workflow
	    And I should be able to ping members associated with a task
	    associated with this workflow