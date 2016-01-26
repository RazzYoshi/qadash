class LoginSession(object):

	def __init__(self, login_type, user_id):
	    self.login_type = login_type
	    self.user_id = user_id
	    
	def verify(self, user_id):
		if user_id == 1292016:
			return True
		else:
			return False