extends RemoteTransform

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_remote_node(Autoload.get_string())
		if randi() % 2 == 1:
			set_use_global_coordinates(Autoload.get_bool())
		if randi() % 2 == 1:
			set_update_position(Autoload.get_bool())
		if randi() % 2 == 1:
			set_update_rotation(Autoload.get_bool())
		if randi() % 2 == 1:
			set_update_scale(Autoload.get_bool())
