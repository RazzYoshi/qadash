from workflow import Workflow

class QAdash(object):
	"""
	Domain model for qadash.
	"""
	def __init__(self):
		self.workflows = [Workflow(1,3,1),Workflow(2,3,3),Workflow(3,1,3)]
	
	def check_updated(self):
		return True