class Workflow(object):

    def __init__(self, impact, past_w_d_avg, six_m_d_avg):
        self.impact_score = impact
        self.past_week_daily_average = past_w_d_avg
        self.six_month_daily_average = six_m_d_avg
        self.critical = False
        self.risk = 0
        self.impact_score = 0

    def check_low_success(self):
    	if self.past_week_daily_average < self.six_month_daily_average:
    		return True
    	else:
    		return False

    def check_impact_score(self):
		if self.impact_score is not None:
			return True
		else:
			return False