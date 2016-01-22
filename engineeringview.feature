#File: engineeringview.feature
#Base: managementview.feature
#
#Critical additions: 
#	Viewing tasks
#Critical changes:
#	Sans viewing system overall success rate
#___________________
Feature: Viewing QA Dashboard for Engineering
	As a member of engineering
	I want to view weekly and monthly success rate by task
	So that I can understand when and where solve problems with the system
	
	Scenario: engineer searches for failing workflows
		Given I am logged in as engineering
		And there are workflows failing at a higher rate this week than 
		6 month average
		When I query critical workflows
		Then I should see graphs showing workflows with decreased success rates
		And I should see the tasks associated or most likely associated with
		the failures
  
	Scenario: engineer views workflow success rate
	  	Given I am logged in as engineering
	  	When I view the workflow success rate 
	  	Then I should see the current day success rate benchmark
	  	And I should see the current week success rate benchmark
	  	And I should see the past week success rate benchmark
	  	And I should see the daily success rate benchmark for the past 7 days
	  	And I should see the standard deviation of success rate this week
	  	And I should see a box and whiskers graph of success rate this month
	  	And I should see the known issues that affect this workflow
	  	And I should see the impact on and response from users
	  	And I should see the engineering perspective of the problem
	  	And I should see the history of issues with this workflow
	  	And I should see a list of top reasons this workflow has failed
	  	And I should be able to view tickets associated with this workflow
	  	And I should be able to view the tasks associated with this workflow

	Scenario: engineer views task success rate
		Given I am logged in as engineering
		When I view the task success rate
		Then I should see the current day success rate benchmark
	  	And I should see the current week success rate benchmark
	  	And I should see the past week success rate benchmark
	  	And I should see the daily success rate benchmark for the past 7 days
	  	And I should see the standard deviation of success rate this week
	  	And I should see a box and whiskers graph of success rate this month
	  	And I should see the known issues that affect this task
	  	And I should see the history of issues with this workflow
	  	And I should see a list of top reasons this workflow has failed

	Scenario: engineer finds responsibility holders for workflow
	    Given I am logged in as engineering
	    And the workflow has been assigned members
	    When I view the workflow success rate
	    Then I should be able to view members associated with this workflow