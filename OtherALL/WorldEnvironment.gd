extends WorldEnvironment

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_WorldEnvironment : WorldEnvironment, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_WorldEnvironment)
		AutoObjects.A_Node(q_WorldEnvironment)
		
	### START TEMP
	var temp_Environment : Environment = Environment.new()
#?#	AutoResourcesEnvironment.nodeFunction(temp_Environment)
	
	### END TEMP
	

	if Autoload.SLOW_FUNCTIONS:
		if randi() % 2 == 1:
			q_WorldEnvironment.set_environment(temp_Environment)
