extends Node2D

var q_Animation : Animation = Animation.new()
var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if randi() % 2 == 1:
			q_Animation = Animation.new()
			
		
		if randi() % 2 == 1:
			q_Animation.set_length(Autoload.get_randf())
		if randi() % 2 == 1:
			q_Animation.set_loop(bool(randi()%2))
		if randi() % 2 == 1:
			q_Animation.set_step(Autoload.get_randf())
			
		for _i in range(5):
			if randi() % 2 == 1:
				qq += str(q_Animation.add_track(Autoload.get_randi(),Autoload.get_randi())) #TrackType 
			
		if randi() % 2 == 1:
			qq += str(q_Animation.animation_track_get_key_animation(Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_Animation.animation_track_insert_key(1,Autoload.get_randf(),Autoload.get_string()))
		if randi() % 2 == 1:
			q_Animation.animation_track_set_key_animation(Autoload.get_randi(),Autoload.get_randi(),Autoload.get_string())
			
		if randi() % 2 == 1:
			qq += str(q_Animation.audio_track_get_key_end_offset(Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_Animation.audio_track_get_key_start_offset(Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_Animation.audio_track_get_key_stream(Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_Animation.audio_track_insert_key(1,Autoload.get_randf(),AudioStreamGenerator.new(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_Animation.audio_track_set_key_end_offset(Autoload.get_randi(),Autoload.get_randi(),Autoload.get_randf())
		if randi() % 2 == 1:
			q_Animation.audio_track_set_key_start_offset(Autoload.get_randi(),Autoload.get_randi(),Autoload.get_randf())
		if randi() % 2 == 1:
			q_Animation.audio_track_set_key_stream(Autoload.get_randi(),Autoload.get_randi(),AudioStream.new())
			
		if randi() % 2 == 1:
			qq += str(q_Animation.bezier_track_get_key_in_handle(Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_Animation.bezier_track_get_key_out_handle(Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_Animation.bezier_track_get_key_value(Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_Animation.bezier_track_insert_key(Autoload.get_randi(),Autoload.get_randf(),Autoload.get_randf(),Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf())))
		if randi() % 2 == 1:
			qq += str(q_Animation.bezier_track_interpolate(Autoload.get_randi(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_Animation.bezier_track_set_key_in_handle(Autoload.get_randi(),Autoload.get_randi(),Vector2(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_Animation.bezier_track_set_key_out_handle(Autoload.get_randi(),Autoload.get_randi(),Vector2(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			q_Animation.bezier_track_set_key_value(Autoload.get_randi(),Autoload.get_randi(),Autoload.get_randf())
			
			#MOVED AT ENDq_Animation.clear()
		if randi() % 2 == 1:
			q_Animation.copy_track(Autoload.get_randi(), Animation.new())
		if randi() % 2 == 1:
			qq += str(q_Animation.find_track("."))
		if randi() % 2 == 1:
			qq += str(q_Animation.get_track_count())
			
		if randi() % 2 == 1:
			qq += str(q_Animation.method_track_get_key_indices(Autoload.get_randi(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(q_Animation.method_track_get_name(Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_Animation.method_track_get_params(Autoload.get_randi(),Autoload.get_randi()))
			
		if randi() % 2 == 1:
			q_Animation.remove_track(Autoload.get_randi())
			
		if randi() % 2 == 1:
			qq += str(q_Animation.track_find_key(Autoload.get_randi(),Autoload.get_randf(),bool(randi()%2)))
		if randi() % 2 == 1:
			qq += str(q_Animation.track_get_interpolation_loop_wrap(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_Animation.track_get_interpolation_type(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_Animation.track_get_key_count(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_Animation.track_get_key_time(Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_Animation.track_get_key_transition(Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_Animation.track_get_key_value(Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_Animation.track_get_path(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_Animation.track_get_type(Autoload.get_randi()))
		if randi() % 2 == 1:
			q_Animation.track_insert_key(Autoload.get_randi(),Autoload.get_randf(),String(),Autoload.get_randf())
		if randi() % 2 == 1:
			qq += str(q_Animation.track_is_enabled(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_Animation.track_is_imported(Autoload.get_randi()))
		if randi() % 2 == 1:
			q_Animation.track_move_down(Autoload.get_randi())
		if randi() % 2 == 1:
			q_Animation.track_move_to(Autoload.get_randi(),Autoload.get_randi())
		if randi() % 2 == 1:
			q_Animation.track_move_up(Autoload.get_randi())
		if randi() % 2 == 1:
			q_Animation.track_remove_key(Autoload.get_randi(),Autoload.get_randi())
		if randi() % 2 == 1:
			q_Animation.track_remove_key_at_position(Autoload.get_randi(),Autoload.get_randf())
		if randi() % 2 == 1:
			q_Animation.track_set_enabled(Autoload.get_randi(),bool(randi()%2))
		if randi() % 2 == 1:
			q_Animation.track_set_imported(Autoload.get_randi(),bool(randi()%2))
		if randi() % 2 == 1:
			q_Animation.track_set_interpolation_loop_wrap(Autoload.get_randi(),bool(randi()%2))
		if randi() % 2 == 1:
			q_Animation.track_set_interpolation_type(Autoload.get_randi(), Autoload.get_randi()) # InterpolationType
		if randi() % 2 == 1:
			q_Animation.track_set_key_time(Autoload.get_randi(),Autoload.get_randi(),bool(randi()%2))
		if randi() % 2 == 1:
			q_Animation.track_set_key_transition(Autoload.get_randi(),Autoload.get_randi(),bool(randi()%2))
		if randi() % 2 == 1:
			q_Animation.track_set_key_value(Autoload.get_randi(),Autoload.get_randi(),Autoload.get_randf())
		if randi() % 2 == 1:
			q_Animation.track_set_path(Autoload.get_randi(),".")
		if randi() % 2 == 1:
			q_Animation.track_swap(Autoload.get_randi(),Autoload.get_randi())
		if randi() % 2 == 1:
			qq += str(q_Animation.transform_track_insert_key(Autoload.get_randi(),Autoload.get_randf(),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Quat(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())))
		if randi() % 2 == 1:
			qq += str(q_Animation.transform_track_interpolate(Autoload.get_randi(),Autoload.get_randf()))
			
		if randi() % 2 == 1:
			qq += str(q_Animation.value_track_get_key_indices(Autoload.get_randi(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(q_Animation.value_track_get_update_mode(Autoload.get_randi()))
		if randi() % 2 == 1:
			q_Animation.value_track_set_update_mode(Autoload.get_randi(),Autoload.get_randi()) # UpdateMode
			
		if randi() % 2 == 1:
			q_Animation.clear() # Clear
