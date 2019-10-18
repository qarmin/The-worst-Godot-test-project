extends AnimationPlayer

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_root(Autoload.get_nodepath(self))
		if randi() % 2 == 1:
			set_current_animation(Autoload.get_string())
		if randi() % 2 == 1:
			set_assigned_animation(Autoload.get_string())
		if randi() % 2 == 1:
			set_autoplay(Autoload.get_string())
		if randi() % 2 == 1:
			Autoload.qq = str(get_current_animation_length())
		if randi() % 2 == 1:
			Autoload.qq = str(get_current_animation_position())
		if randi() % 2 == 1:
			set_animation_process_mode(Autoload.get_int()) # AnimationProcessMode
		if randi() % 2 == 1:
			set_default_blend_time(Autoload.get_float())
		if randi() % 2 == 1:
			set_active(Autoload.get_bool())
		if randi() % 2 == 1:
			set_speed_scale(Autoload.get_float())

		if randi() % 2 == 1:
			Autoload.qq = str(add_animation(Autoload.get_string(), Animation.new()))
		if randi() % 2 == 1:
			advance(Autoload.get_float())
		if randi() % 2 == 1:
			Autoload.qq = str(animation_get_next(Autoload.get_string()))
		if randi() % 2 == 1:
			animation_set_next(Autoload.get_string(),Autoload.get_string())
		if randi() % 2 == 1:
			clear_caches()
		if randi() % 2 == 1:
			clear_queue()
		if randi() % 2 == 1:
			Autoload.qq = str(find_animation(Animation.new()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_animation(Autoload.get_string()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_animation_list())
		if randi() % 2 == 1:
			Autoload.qq = str(get_blend_time(Autoload.get_string(),Autoload.get_string()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_playing_speed())
		if randi() % 2 == 1:
			Autoload.qq = str(get_queue())
		if randi() % 2 == 1:
			Autoload.qq = str(has_animation(Autoload.get_string()))
		if randi() % 2 == 1:
			Autoload.qq = str(is_playing())
		if randi() % 2 == 1:
			play(Autoload.get_string(),Autoload.get_float(),Autoload.get_float(),Autoload.get_bool())
		if randi() % 2 == 1:
			play_backwards(Autoload.get_string(),Autoload.get_float())
		if randi() % 2 == 1:
			queue(Autoload.get_string())
		if randi() % 2 == 1:
			remove_animation(Autoload.get_string())
		if randi() % 2 == 1:
			rename_animation(Autoload.get_string(),Autoload.get_string())
		if randi() % 2 == 1:
			seek(Autoload.get_float(),Autoload.get_bool())
		if randi() % 2 == 1:
			set_blend_time(Autoload.get_string(),Autoload.get_string(),Autoload.get_float())
		if randi() % 2 == 1:
			stop(Autoload.get_bool())
