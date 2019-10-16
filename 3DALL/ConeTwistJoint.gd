extends ConeTwistJoint

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			_set_swing_span(Autoload.get_float())
		if randi() % 2 == 1:
			_set_twist_span(Autoload.get_float())
		if randi() % 2 == 1:
			set_param(Autoload.get_int(), Autoload.get_float())

			#Joint
		if randi() % 2 == 1:
			set_node_a(Autoload.get_string())
		if randi() % 2 == 1:
			set_node_b(Autoload.get_string())
		if randi() % 2 == 1:
			set_solver_priority(Autoload.get_int())
		if randi() % 2 == 1:
			set_exclude_nodes_from_collision(Autoload.get_bool())
