extends ProximityGroup

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_group_name(Autoload.get_string())
		if randi() % 2 == 1:
			set_dispatch_mode(Autoload.get_int()) # DispatchMode
		if randi() % 2 == 1:
			set_grid_radius(Autoload.get_vector3())
		if randi() % 2 == 1:
			broadcast(Autoload.get_string(), Autoload.loadA("InputEventAction.tres"))
