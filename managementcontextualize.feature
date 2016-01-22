Feature: Contextualizing QA Dashboard
	As a member of management
	I want to contextualize weekly and monthly success rate by workflow
	So that I can can understand how to take action to improve system health

    Scenario: manager views workflow context
	  	Given I am logged in as management
	  	And the workflow is showing suboptimal success rate
	  	When I view the workflow success rate 
	  	Then I should see the known issues that affect this workflow
	  	Then I should see the impact on and response from users
	  	Then I should see the engineering perspective of the problem
	  	Then I should see the history of issues with this workflow
	  	Then I should see a list of top reasons this workflow has failed
	  	Then I should be able to differentiate an abort from a fail
	  	Then I should be able to view tickets associated with this workflow
	
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