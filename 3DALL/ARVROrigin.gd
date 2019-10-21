extends ARVROrigin

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_ARVROrigin : ARVROrigin, can_reset : bool = false) -> void:
	
	AutoObjects.A_Object(self)
	AutoObjects.A_Node(self)
	AutoObjects.A_Spatial(self)
		
	if can_reset:
		if randi() % 2 == 1:
			q_ARVROrigin = ARVROrigin.new()
		
	if randi() % 2 == 1:
		q_ARVROrigin.set_world_scale(Autoload.get_bool())

