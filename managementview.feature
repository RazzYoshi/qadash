Feature: Viewing QA Dashboard
	As a member of management
	I want to view weekly and monthly success rate by workflow
	So that I can understand when and where to take action to 
	improve system health

	Scenario: manager searches for failing workflows
		Given I am logged in as management
		And a workflow is failing at a higher rate this week than 6 month 
		average
		When I query critical workflows
		Then I should see graphs showing workflows with decreased success rates
	
	Scenario: manager views overall success rate
	  	Given I am logged in as management
	  	When I view the system overall success rate 
	  	Then I should see the carrent day average success rate compared to 6 
	  	month average
	  	Then I should see the current week average success rate compared to 6 
	  	month average
	  	Then I should see the past week average success rate compared to 6 month 
	  	average
	  	Then I should see the daily average success rate for the past 7 days 
	  	compared to 6 monnth average
	  	Then I should see a graph of week average success rate over the past 6 
	  	months
	  
	 Scenario: manager views workflow success rate
	  	Given I am logged in as management
	  	When I view the system workflow success rate 
	  	Then I should see the carrent day success rate benchmark
	  	Then I should see the current week success rate benchmark
	  	Then I should see the past week success rate benchmark
	  	Then I should see the daily success rate benchmark for the past 7 days
	  	Then I should see the standard deviation of success rate this week
	  	Then I should see a box and whiskers graph of success rate this month
	 
	Scenario: manager finds responsibility holders for workflow
	    Given I am logged in as management
	    And the workflow has been assigned members
	    When I view the workflow success rate
	    Then I should be able to ping members of this workflow