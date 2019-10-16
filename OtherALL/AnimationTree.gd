extends AnimationTree

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_tree_root(AnimationNode.new())
		if randi() % 2 == 1:
			set_animation_player(Autoload.get_nodepath(self))
		if randi() % 2 == 1:
			set_active(Autoload.get_bool())
		if randi() % 2 == 1:
			set_process_mode(Autoload.get_int()) #AnimationProcessMode
		if randi() % 2 == 1:
			set_root_motion_track(Autoload.get_nodepath(self))

		if randi() % 2 == 1:
			advance(Autoload.get_float())
		if randi() % 2 == 1:
			Autoload.qq = str(get_root_motion_transform())
		if randi() % 2 == 1:
			rename_parameter(Autoload.get_string(),Autoload.get_string())
