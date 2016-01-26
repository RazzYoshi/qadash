from qadash import QAdash

qadashboard = QAdash()
is_updated = qadashboard.check_updated()
critical_workflows = []
#print is_updated

for i in range(0, qadashboard.workflows.__len__()):
	is_low_success = qadashboard.workflows[i].check_low_success()
	if is_low_success:
		if not i in critical_workflows:
			critical_workflows.append(i)

for i in range(0, qadashboard.workflows.__len__()):
	is_high_risk = True if (qadashboard.workflows[i].risk > 1) else False
	if is_high_risk:
		if not i in critical_workflows:
			critical_workflows.append(i)

expected_critical_count = 0
for i in range(0, qadashboard.workflows.__len__()):
	is_high_risk = True if (qadashboard.workflows[i].risk > 1) else False
	is_low_success = qadashboard.workflows[i].check_low_success()
	if is_high_risk or is_low_success:
		expected_critical_count += 1
critical_count = critical_workflows.__len__()

print critical_count
print expected_critical_count

print (critical_count == expected_critical_count)