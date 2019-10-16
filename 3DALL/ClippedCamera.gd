extends ClippedCamera

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_margin(Autoload.get_float())
		if randi() % 2 == 1:
			set_process_mode(Autoload.get_int()) #ProcessMode
		if randi() % 2 == 1:
			set_collision_mask(Autoload.get_int())
		if randi() % 2 == 1:
			set_clip_to_areas(Autoload.get_bool())
		if randi() % 2 == 1:
			set_clip_to_bodies(Autoload.get_bool())
		if randi() % 2 == 1:

			add_exception(get_parent())
		if randi() % 2 == 1:
			add_exception_rid(RID())
		if randi() % 2 == 1:
			clear_exceptions()
		if randi() % 2 == 1:
			Autoload.qq = str(get_collision_mask_bit(Autoload.get_int()))
		if randi() % 2 == 1:
			remove_exception(get_parent())
		if randi() % 2 == 1:
			remove_exception_rid(RID())
		if randi() % 2 == 1:
			set_collision_mask_bit(Autoload.get_int(),Autoload.get_bool())
