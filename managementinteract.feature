Feature: Interacting with QA Dashboard
	As a member of management
	I want to be able to contextualize workflow failure
	So that I can control the flow of system improvements
	
    Scenario: manager adds workflow context
	  	Given I am logged in as management
	  	And the workflow success rate requires more context
	  	When I view the workflow success rate 
	  	Then I should be able to specify known issues that affect this workflow
	  	Then I should be able to specify impact on and response from users
	  	Then I should be able to specify engineering perspective of the problem
	  	Then I should be able to specify history of issues with this workflow
	  	Then I should be able to specify a list of top reasons this workflow 
	  	has failed
	  	Then I should be able to specify whether the issue is an abort or a fail
	
	Scenario: manager assigns responsibilities for workflow failures
	    Given I am logged in as management
	    And the workflow is showing suboptimal success rate
	    When I view the workflow success rate
	    Then I should be able to tag members to this workflow

	Scenario: manager contacts responsibility holders for workflow
	    Given I am logged in as management
	    And the workflow has been assigned members
	    When I view the workflow success rate
	    Then I should be able to ping members associated with this workflow