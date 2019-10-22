extends ProximityGroup

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_ProximityGroup : ProximityGroup) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_ProximityGroup)
		AutoObjects.A_Node(q_ProximityGroup)
		AutoObjects.A_Spatial(q_ProximityGroup)
		
	if randi() % 2 == 1:
		q_ProximityGroup.set_group_name(Autoload.get_string())
	if randi() % 2 == 1:
		q_ProximityGroup.set_dispatch_mode(Autoload.get_int()) # DispatchMode
	if randi() % 2 == 1:
		q_ProximityGroup.set_grid_radius(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_ProximityGroup.broadcast(Autoload.get_string(), Autoload.loadA("InputEventAction.tres"))
