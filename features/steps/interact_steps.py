# File: interact_steps.py
#
#___________________
from login import LoginSession
import qadash
from behave import given, when, then, step
from hamcrest import assert_that

# States
@given(u'I am logged in as engineering')
def step_login_engineering(context, user_id = 1292016):
    context.session = LoginSession('engineer', user_id)
    context.log_in = context.session.verify(user_id)

# Actions
@when(u'I specify known issues that affect the workflow')
def step_specify_known_issues(context):
	raise NotImplementedError('action not implemented yet')

@when(u'I specify history of issues with the workflow')
def step_specify_history(context):
	raise NotImplementedError('action not implemented yet')

@when(u'I assign a user impact score')
def step_specify_impact(context):
	raise NotImplementedError('action not implemented yet')

@when(u'I specify engineering perspective of the problem')
def step_specify_engineer_perspective(context):
    raise NotImplementedError('action not implemented yet')

# Outcomes
@then('the issues I specify should be stored in workflow success') #-- specify issue
def step_store_known_issues(context):
	raise NotImplementedError('outcome not implemented yet')

@then('the history I specify should be stored in workflow success') #-- specify history
def step_store_history(context):
	raise NotImplementedError('outcome not implemented yet')

@then('the impact score I assign should be stored in workflow success') #-- specify impact
def step_store_impact(context):
	raise NotImplementedError('outcome not implemented yet')

@then('a risk score should be calculated')
def step_calculate_risk(context, impact_score, frequency_percent):
	assert impact_score, "impact score is required"
	assert frequency_percent, "frequency percentage is required"
	risk_score = impact_score * frequency_percent
	assert_that(risk_score is not None)
	return risk_score
		
@then('the risk score should be stored in workflow success')
def step_store_risk(context):
	raise NotImplementedError('outcome not implemented yet')

@then('the engineering perspective I specify should be stored in workflow success')
def step_store_engineer_perspective(context):
    raise NotImplementedError('outcome not implemented yet')
