extends AnimationPlayer

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_AnimationPlayer : AnimationPlayer, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_AnimationPlayer)
		AutoObjects.A_Node(q_AnimationPlayer)
	
	if randi() % 2 == 1:
		q_AnimationPlayer.set_root(Autoload.get_nodepath(q_AnimationPlayer))
	if randi() % 2 == 1:
		q_AnimationPlayer.set_current_animation(Autoload.get_string())
	if randi() % 2 == 1:
		q_AnimationPlayer.set_assigned_animation(Autoload.get_string())
	if randi() % 2 == 1:
		q_AnimationPlayer.set_autoplay(Autoload.get_string())
	if randi() % 2 == 1:
		q_AnimationPlayer.get_current_animation_length()
	if randi() % 2 == 1:
		q_AnimationPlayer.get_current_animation_position()
	if randi() % 2 == 1:
		q_AnimationPlayer.set_animation_process_mode(Autoload.get_int()) # AnimationProcessMode
	if randi() % 2 == 1:
		q_AnimationPlayer.set_default_blend_time(Autoload.get_float())
	if randi() % 2 == 1:
		q_AnimationPlayer.set_active(Autoload.get_bool())
	if randi() % 2 == 1:
		q_AnimationPlayer.set_speed_scale(Autoload.get_float())

	if randi() % 2 == 1:
		q_AnimationPlayer.add_animation(Autoload.get_string(), Animation.new())
	if randi() % 2 == 1:
		q_AnimationPlayer.advance(Autoload.get_float())
	if randi() % 2 == 1:
		q_AnimationPlayer.animation_get_next(Autoload.get_string())
	if randi() % 2 == 1:
		q_AnimationPlayer.animation_set_next(Autoload.get_string(),Autoload.get_string())
	if randi() % 2 == 1:
		q_AnimationPlayer.clear_caches()
	if randi() % 2 == 1:
		q_AnimationPlayer.clear_queue()
	if randi() % 2 == 1:
		q_AnimationPlayer.find_animation(Animation.new())
	if randi() % 2 == 1:
		q_AnimationPlayer.get_animation(Autoload.get_string())
	if randi() % 2 == 1:
		q_AnimationPlayer.get_animation_list()
	if randi() % 2 == 1:
		q_AnimationPlayer.get_blend_time(Autoload.get_string(),Autoload.get_string())
	if randi() % 2 == 1:
		q_AnimationPlayer.get_playing_speed()
	if randi() % 2 == 1:
		q_AnimationPlayer.get_queue()
	if randi() % 2 == 1:
		q_AnimationPlayer.has_animation(Autoload.get_string())
	if randi() % 2 == 1:
		q_AnimationPlayer.is_playing()
	if randi() % 2 == 1:
		q_AnimationPlayer.play(Autoload.get_string(),Autoload.get_float(),Autoload.get_float(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_AnimationPlayer.play_backwards(Autoload.get_string(),Autoload.get_float())
	if randi() % 2 == 1:
		q_AnimationPlayer.queue(Autoload.get_string())
	if randi() % 2 == 1:
		q_AnimationPlayer.remove_animation(Autoload.get_string())
	if randi() % 2 == 1:
		q_AnimationPlayer.rename_animation(Autoload.get_string(),Autoload.get_string())
	if randi() % 2 == 1:
		q_AnimationPlayer.seek(Autoload.get_float(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_AnimationPlayer.set_blend_time(Autoload.get_string(),Autoload.get_string(),Autoload.get_float())
	if randi() % 2 == 1:
		q_AnimationPlayer.stop(Autoload.get_bool())
