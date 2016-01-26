# File: automation_steps.py
#
#___________________
from qadash import QAdash
from behave import given, when, then, step

# States
@given(u'new data has been pulled from truth')
def step_new_data(context):
	context.qadashboard = QAdash()
	context.is_updated = context.qadashboard.check_updated()
	context.critical_workflows = []

@given(u'the workflow has a user impact score')
def step_has_impact_score(context, workflow_id = 1):
	context.curr_workflow = context.qadashboard.workflows[workflow_id]
	context.has_impact_score = context.curr_workflow.check_impact_score()

# Actions
@when(u'a workflow has low success rate')
def step_low_success(context):
	for i in range(0, context.qadashboard.workflows.__len__()):
		is_low_success = context.qadashboard.workflows[i].check_low_success()
		if is_low_success:
			if not i in context.critical_workflows:
				context.critical_workflows.append(i)

@when(u'a workflow has a high risk score')
def step_high_risk(context):
	for i in range(0, context.qadashboard.workflows.__len__()):
		is_high_risk = True if (context.qadashboard.workflows[i].risk > 1) else False
		if is_high_risk:
			if not i in context.critical_workflows:
				context.critical_workflows.append(i)

# Outcomes
@then(u'the workflow should be marked as critical')
def step_mark_critical(context):
	expected_critical_count = 0
	for i in range(0,context.qadashboard.workflows.__len__()):
		is_high_risk = True if (context.qadashboard.workflows[i].risk > 1) else False
		is_low_success = context.qadashboard.workflows[i].check_low_success()
		if is_high_risk or is_low_success:
			expected_critical_count += 1
	
	context.execute_steps(u'''
        when a workflow has a high risk score
        when a workflow has low success rate 
    ''')

	critical_count = context.critical_workflows.__len__()

	assert (critical_count == expected_critical_count)

