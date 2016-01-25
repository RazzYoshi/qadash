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

	Scenario: manager views the overall success
		Given I am logged in as management
		When I view the system overall success
		Then I should see the 6 month weekly average success rate
		And I should see the 6 month daily average success rate
		And I should see the past week daily average success rate
		And I should see the past 7 days daily average success rate
		And I should see a graph of 6 month weekly average success rates

	Scenario: manager views the workflow success summary
		Given I am logged in as management
		When I view the workflow success summary
		Then I should see the 6 month weekly average success rate for each workflow
		And I should see the past week daily average success rate for each workflow
		And I should see the past 7 days daily average success rate for each workflow
		And I should see a user user impact score for eash workflow
		And I should see the risk score for each workflow

	Scenario: critical workflows are highlighted in red
		Given I am logged in as management
		When I view the workflow success summary
		And one or more workflow is marked as critical
		Then I should see the critical workflows highlighted in red

	Scenario: manager views a workflow success
		Given I am logged in as management
		When I view a workflow success
		Then I should see the 6 month daily average success rate for this workflow
		And I should see the current success rate for this workflow
		And I should see the standard deviation of daily success rates this week for this workflow
		And I should see a box and whiskers graph of daily success rates this month for this workflow
		And I should see the known issues that affect this workflow
		And I should see a user impact score for this workflow
		And I should see the engineering perspective of the problem with this workflow
		And I should see the history of issues with this workflow
		And I should see a list of causes of failures for this workflow
		And I should see whether the problem was abort or failure on this workflow
		And I should see tickets associated with this workflow
	  
	Scenario: critical workflows are marked in workflow success
		Given I am logged in as management
		When I view a workflow success
		And the workflow has been marked as critical
		Then I should see the workflow marked as critical