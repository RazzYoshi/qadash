#File: managementview.feature
#Base: none
#
#Basic viewing feature
#___________________
Feature: Viewing QA Dashboard for Management
	As a member of management
	I want to view weekly and monthly success rate by workflow
	So that I can understand when and where to take action to 
	improve system health
	
	Scenario: manager searches for failing workflows
		Given I am logged in as management
		And there are workflows failing at a higher rate this week than 6 
		month average
		When I query critical workflows
		Then I should see graphs showing workflows with decreased success rates

	Scenario: manager views overall success rate
		Given I am logged in as management
		When I view the system overall success rate 
		Then I should see the current day average success rate compared to 6 
		month average
		And I should see the current week average success rate compared to 6 
		month average
		And I should see the past week average success rate compared to 6 month 
		average
		And I should see the daily average success rate for the past 7 days 
		compared to 6 month average
		And I should see a graph of week average success rate over the past 6 
		months
	  
	Scenario: manager views workflow success rate
		Given I am logged in as management
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
		And I should be able to differentiate an abort from a fail
		And I should be able to view tickets associated with this workflow