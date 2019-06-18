extends Node2D

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
		
		var q_Animation : Animation = Animation.new()
		
		q_Animation.set_length(randf() * 50)
		q_Animation.set_loop(bool(randi()%2))
		q_Animation.set_step(randf() * 50)
		
		for _i in range(3):
			q_Animation.add_track(randi() % 6, -1) #TrackType 
		
		q_Animation.animation_track_get_key_animation(1,2)
		q_Animation.animation_track_insert_key(1,randf() * 50,"Kropierz")
		q_Animation.animation_track_set_key_animation(1,2,"Krowa")
		
		q_Animation.audio_track_get_key_end_offset(1,2)
		q_Animation.audio_track_get_key_start_offset(1,2)
		q_Animation.audio_track_get_key_stream(1,2)
		q_Animation.audio_track_insert_key(1,randf() * 50,AudioStream.new(),randf() * 50,randf() * 50)
		q_Animation.audio_track_set_key_end_offset(1,2,randf() * 50)
		q_Animation.audio_track_set_key_start_offset(1,2,randf() * 50)
		q_Animation.audio_track_set_key_stream(1,2,AudioStream.new())
		
		q_Animation.bezier_track_get_key_in_handle(1,2)
		q_Animation.bezier_track_get_key_out_handle(1,2)
		q_Animation.bezier_track_get_key_value(1,2)
		q_Animation.bezier_track_insert_key(1,randf() * 50,randf() * 50,Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50))
		q_Animation.bezier_track_interpolate(1,randf() * 50)
		q_Animation.bezier_track_set_key_in_handle(1,2,Vector2(randf() * 50,randf() * 50))
		q_Animation.bezier_track_set_key_out_handle(1,2,Vector2(randf() * 50,randf() * 50))
		q_Animation.bezier_track_set_key_value(1,2,randf() * 50)
		
		#MOVED AT ENDq_Animation.clear()
		q_Animation.copy_track(1, Animation.new())
		q_Animation.find_track(".")
		q_Animation.get_track_count()
		
		q_Animation.method_track_get_key_indices(1,randf() * 50,randf() * 50)
		q_Animation.method_track_get_name(1,2)
		q_Animation.method_track_get_params(1,2)
		
		q_Animation.remove_track(1)
		
		q_Animation.track_find_key(1,randf() * 50,bool(randi()%2))
		q_Animation.track_get_interpolation_loop_wrap(1)
		q_Animation.track_get_interpolation_type(1)
		q_Animation.track_get_key_count(1)
		q_Animation.track_get_key_time(1,2)
		q_Animation.track_get_key_transition(1,2)
		q_Animation.track_get_key_value(1,2)
		q_Animation.track_get_path(1)
		q_Animation.track_get_type(1)
		q_Animation.track_insert_key(1,randf() * 50,String(),randf() * 50)
		q_Animation.track_is_enabled(1)
		q_Animation.track_is_imported(1)
		q_Animation.track_move_down(1)
		q_Animation.track_move_to(1,2)
		q_Animation.track_move_up(1)
		q_Animation.track_remove_key(1,2)
		q_Animation.track_remove_key_at_position(1,randf() * 50)
		q_Animation.track_set_enabled(1,bool(randi()%2))
		q_Animation.track_set_imported(1,bool(randi()%2))
		q_Animation.track_set_interpolation_loop_wrap(1,bool(randi()%2))
		q_Animation.track_set_interpolation_type(1, randi() % 3) # InterpolationType
		q_Animation.track_set_key_time(1,2,bool(randi()%2))
		q_Animation.track_set_key_transition(1,2,bool(randi()%2))
		q_Animation.track_set_key_value(1,2,randf() * 50)
		q_Animation.track_set_path(1,".")
		q_Animation.track_swap(randi()%50,randi()%50)
		q_Animation.transform_track_insert_key(randi()%50,randf() * 50,Vector3(randf() * 50,randf() * 50,randf() * 50),Quat(Vector3(randf() * 50,randf() * 50,randf() * 50),randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50))
		q_Animation.transform_track_interpolate(1,randf() * 50)
		
		q_Animation.value_track_get_key_indices(1,randf() * 50,randf() * 50)
		q_Animation.value_track_get_update_mode(1)
		q_Animation.value_track_set_update_mode(1,randi() % 4) # UpdateMode
		
		q_Animation.clear() # Clear
		
		if Autoload.WRONG_BUGS:
			pass
			
			
			
			
