# File: interact_steps.py
#
#___________________
from behave import given, when, then, step

# States
@given('I am logged in as management')
def step_login_management(context):
    pass

@given('I am logged in as engineering')
def step_login_engineering(context):
    pass

# Actions
@when('I view a workflow success')
def step_workflow_success(context):
	pass

@when('I specify known issues that affect the workflow')
def step_specify_known_issues(context):
	pass

@when('I specify history of issues with the workflow')
def step_specify_history(context):
	pass

@when('I assign a user impact score')
def step_specify_impact(context):
	pass

# Outcomes
@then('the issues I specify should be stored in workflow success') #-- specify issue
def step_store_known_issues(context):
	pass

@then('the history I specify should be stored in workflow success') #-- specify history
def step_store_history(context):
	pass

@then('the impact score I assign should be stored in workflow success') #-- specify impact
def step_store_impact(context):
	pass

@then('a risk score should be calculated')
def step_calculate_risk(context):
	pass
		
@then('the risk score should be stored in workflow success')
def step_store_risk(context):
	pass
