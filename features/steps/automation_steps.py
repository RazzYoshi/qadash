# File: automation_steps.py
#
#___________________
from behave import given, when, then, step

# States
@given('new data has been pulled from truth')
def step_new_data(context):
    pass

@given('the workflow has a risk score')
def step_has_risk_score(context):
    pass

# Actions
@when('a workflow has a past week daily average success rate lower than the 6 month daily average success rate')
def step_low_success(context):
	pass

@when('a workflow has a high risk score')
def step_high_risk(context):
	pass

# Outcomes
@then('the workflow should be marked as critical')
def step_mark_critical(context):
	pass
