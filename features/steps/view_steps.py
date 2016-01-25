# File: view_steps.py
#
#___________________
from behave import given, when, then, step

# States
@given('I am logged in as management')
def step_login_management(context):
    pass

# Actions
@when('I view the system overall success')
def step_overall_success(context):
    pass

@when('I view the workflow success summary')
def step_success_summary(context):
    pass

@when('one or more workflow is marked as critical')
def step_workflows_are_critical(context):
    pass

@when('I view a workflow success')
def step_workflow_success(context):
	pass

@when('the workflow has been marked as critical')
def step_workflow_is_critical(context):
	pass

# Outcomes
@then('I should see the 6 month weekly average success rate') #-- system overall success
def step_system_six_month_week_average(context):
	pass

@then('I should see the 6 month daily average success rate')
def step_system_six_month_day_average(context):
	pass

@then('I should see the past week daily average success rate')
def step_system_week_day_average(context):
	pass

@then('I should see the past 7 days daily average success rate')
def step_system_seven_day_average(context):
	pass

@then('I should see a graph of 6 month weekly average success rates')
def step_graph_six_month_week_average(context):
	pass

@then('I should see the 6 month weekly average success rate for each workflow') #-- workflow success summary
def step_summary_six_month_week_average(context):
	pass

@then('I should see the past week daily average success rate for each workflow')
def step_summary_week_day_average(context):
	pass

@then('I should see the past 7 days daily average success rate for each workflow')
def step_summary_seven_day_average(context):
	pass
	
@then('I should see a user user impact score for eash workflow')
def step_summary_user_impact(context):
	pass

@then('I should see the risk score for each workflow')
def step_summary_risk_score(context):
	pass

@then('I should see the critical workflows highlighted in red')
def step_workflow_is_red(context):
	pass

@then('I should see the 6 month daily average success rate for this workflow') #-- workflow success
def step_workflow_six_month_day_average(context):
	pass

@then('I should see the current success rate for this workflow')
def step_workflow_day_success(context):
	pass

@then('I should see the standard deviation of daily success rates this week for this workflow')
def step_workflow_week_day_deviation(context):
	pass

@then('I should see a box and whiskers graph of daily success rates this month for this workflow')
def step_workflow_month_day_box_whiskers(context):
	pass

@then('I should see the known issues that affect this workflow')
def step_workflow_know_issues(context):
	pass

@then('I should see a user impact score for this workflow')
def step_workflow_user_impact(context):
	pass

@then('I should see the engineering perspective of the problem with this workflow')
def step_workflow_engineer_perspective(context):
	pass

@then('I should see the history of issues with this workflow')
def step_workflow_issue_history(context):
	pass

@then('I should see a list of causes of failures for this workflow')
def step_workflow_failure_reasons(context):
	pass

@then('I should see whether the problem was abort or failure on this workflow')
def step_workflow_abort_or_failure(context):
	pass

@then('I should see tickets associated with this workflow')
def step_workflow_tickets(context):
	pass

@then('I should see the workflow marked as critical')
def step_workflow_marked_as_critical(context):
	pass
