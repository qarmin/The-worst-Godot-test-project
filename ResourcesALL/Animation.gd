extends Node2D

var q_Animation: Animation = Animation.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Animation, true)


func nodeFunction(q_Animation: Animation, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_Animation = Animation.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_Animation)

	### START TEMP
	var temp_Animation: Animation = Animation.new()
#	AutoResourcesAnimation.nodeFunction(temp_Animation) #LOOP

	var temp_AudioStreamGenerator: AudioStreamGenerator = AudioStreamGenerator.new()
	AutoResourcesAudioStreamGenerator.nodeFunction(temp_AudioStreamGenerator)

	### END TEMP

	if randi() % 2 == 1:
		q_Animation.set_length(Autoload.get_float())
	if randi() % 2 == 1:
		q_Animation.set_loop(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Animation.set_step(Autoload.get_float())

	for _i in range(Autoload.get_inti(5)):
		if randi() % 2 == 1:
			q_Animation.add_track(Autoload.get_int(), Autoload.get_int())  #TrackType 

	if randi() % 2 == 1:
		q_Animation.animation_track_get_key_animation(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_Animation.animation_track_insert_key(Autoload.get_int(), Autoload.get_float(), Autoload.get_string())
	if randi() % 2 == 1:
		q_Animation.animation_track_set_key_animation(Autoload.get_int(), Autoload.get_int(), Autoload.get_string())

	if randi() % 2 == 1:
		q_Animation.audio_track_get_key_end_offset(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_Animation.audio_track_get_key_start_offset(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_Animation.audio_track_get_key_stream(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_Animation.audio_track_insert_key(1, Autoload.get_float(), temp_AudioStreamGenerator, Autoload.get_float(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Animation.audio_track_set_key_end_offset(Autoload.get_int(), Autoload.get_int(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Animation.audio_track_set_key_start_offset(Autoload.get_int(), Autoload.get_int(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Animation.audio_track_set_key_stream(Autoload.get_int(), Autoload.get_int(), temp_AudioStreamGenerator)

	if randi() % 2 == 1:
		q_Animation.bezier_track_get_key_in_handle(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_Animation.bezier_track_get_key_out_handle(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_Animation.bezier_track_get_key_value(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_Animation.bezier_track_insert_key(Autoload.get_int(), Autoload.get_float(), Autoload.get_float(), Autoload.get_vector2(), Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Animation.bezier_track_interpolate(Autoload.get_int(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Animation.bezier_track_set_key_in_handle(Autoload.get_int(), Autoload.get_int(), Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Animation.bezier_track_set_key_out_handle(Autoload.get_int(), Autoload.get_int(), Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Animation.bezier_track_set_key_value(Autoload.get_int(), Autoload.get_int(), Autoload.get_float())

	if randi() % 2 == 1:
		q_Animation.clear()
	if randi() % 2 == 1:
		q_Animation.copy_track(Autoload.get_int(), temp_Animation)
	if randi() % 2 == 1:
		q_Animation.find_track(Autoload.get_nodepath(self))
	if randi() % 2 == 1:
		q_Animation.get_track_count()

	if randi() % 2 == 1:
		q_Animation.method_track_get_key_indices(Autoload.get_int(), Autoload.get_float(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Animation.method_track_get_name(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_Animation.method_track_get_params(Autoload.get_int(), Autoload.get_int())

	if randi() % 2 == 1:
		q_Animation.remove_track(Autoload.get_int())

	if randi() % 2 == 1:
		q_Animation.track_find_key(Autoload.get_int(), Autoload.get_float(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_Animation.track_get_interpolation_loop_wrap(Autoload.get_int())
	if randi() % 2 == 1:
		q_Animation.track_get_interpolation_type(Autoload.get_int())
	if randi() % 2 == 1:
		q_Animation.track_get_key_count(Autoload.get_int())
	if randi() % 2 == 1:
		q_Animation.track_get_key_time(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_Animation.track_get_key_transition(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_Animation.track_get_key_value(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_Animation.track_get_path(Autoload.get_int())
	if randi() % 2 == 1:
		q_Animation.track_get_type(Autoload.get_int())
	if randi() % 2 == 1:
		q_Animation.track_insert_key(Autoload.get_int(), Autoload.get_float(), Autoload.get_string(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Animation.track_is_enabled(Autoload.get_int())
	if randi() % 2 == 1:
		q_Animation.track_is_imported(Autoload.get_int())
	if randi() % 2 == 1:
		q_Animation.track_move_down(Autoload.get_int())
	if randi() % 2 == 1:
		q_Animation.track_move_to(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_Animation.track_move_up(Autoload.get_int())
	if randi() % 2 == 1:
		q_Animation.track_remove_key(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_Animation.track_remove_key_at_position(Autoload.get_int(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Animation.track_set_enabled(Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_Animation.track_set_imported(Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_Animation.track_set_interpolation_loop_wrap(Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_Animation.track_set_interpolation_type(Autoload.get_int(), Autoload.get_int())  # InterpolationType
	if randi() % 2 == 1:
		q_Animation.track_set_key_time(Autoload.get_int(), Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_Animation.track_set_key_transition(Autoload.get_int(), Autoload.get_int(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_Animation.track_set_key_value(Autoload.get_int(), Autoload.get_int(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Animation.track_set_path(Autoload.get_int(), Autoload.get_nodepath(self))
	if randi() % 2 == 1:
		q_Animation.track_swap(Autoload.get_int(), Autoload.get_int())
	if randi() % 2 == 1:
		q_Animation.transform_track_insert_key(Autoload.get_int(), Autoload.get_float(), Autoload.get_vector3(), Autoload.get_quat(), Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Animation.transform_track_interpolate(Autoload.get_int(), Autoload.get_float())

	if randi() % 2 == 1:
		q_Animation.value_track_get_key_indices(Autoload.get_int(), Autoload.get_float(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Animation.value_track_get_update_mode(Autoload.get_int())
	if randi() % 2 == 1:
		q_Animation.value_track_set_update_mode(Autoload.get_int(), Autoload.get_int())  # UpdateMode
