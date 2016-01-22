#File: engineeringinteract.feature
#Base: managementinteract.feature
#
#Critical additions:
#	Interact with tasks
#Critical changes:
#	Can only provide technical context to workflow
#___________________
Feature: Interacting with QA Dashboard for Engineering
	As a member of engineering
	I want to be able to contextualize workflow failure
	So that I can influence the flow of system improvements
	
    Scenario: engineer adds workflow context
	  	Given I am logged in as engineering
	  	And a workflow success rate requires more context
	  	When I view the workflow success rate 
	  	Then I should be able to specify known issues that affect this workflow
	  	And I should be able to specify engineering perspective of the problem
	  	And I should be able to specify history of issues with this workflow
	  	And I should be able to specify a list of top reasons this workflow 
	  	has failed

	Scenario: engineer marks task failure as known issue
	  	Given I am logged in as engineering
	  	And a task is showing suboptimal success rate
	  	And the cause is a known issue that cannot be immediately fixed
	  	When I view the task success rate 
	  	Then I should be able to mark task failure as known issue

	Scenario: engineer adds task failure context
	  	Given I am logged in as engineering
	  	When a task is showing suboptimal success rate
	  	Then I should be able to specify history of issues with this task
	  	And I should be able to specify a list of top reasons this task 
	  	has failed

	Scenario: engineer accepts responsibilities for workflow failures
	    Given I am logged in as engineering
	    And a workflow is showing suboptimal success rate
	    When I view the workflow success rate
	    Then I should be able to claim responsibility by adding myself
	    to workflow

	Scenario: engineer accepts responsibilities for task failures
	    Given I am logged in as engineering
	    And a task is showing suboptimal success rate
	    When I view the task success rate
	    Then I should be able to claim responsibility by adding myself
	    to task

	Scenario: engineer contacts responsibility holders for workflow
	    Given I am logged in as engineering
	    And a workflow has associated members
	    When I view the workflow success rate
	    Then I should be able to ping members associated with this workflow

	Scenario: engineer contacts responsibility holders for task
	    Given I am logged in as engineering
	    And a task has associated members
	    When I view the task success rate
	    Then I should be able to ping members associated with this task