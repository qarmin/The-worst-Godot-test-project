extends ARVROrigin

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_ARVROrigin : ARVROrigin, can_reset : bool = false) -> void:
	
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_ARVROrigin)
		AutoObjects.A_Node(q_ARVROrigin)
		AutoObjects.A_Spatial(q_ARVROrigin)
		
	if can_reset:
		if randi() % 2 == 1:
			q_ARVROrigin = ARVROrigin.new()
		
	if randi() % 2 == 1:
		q_ARVROrigin.set_world_scale(Autoload.get_bool())

