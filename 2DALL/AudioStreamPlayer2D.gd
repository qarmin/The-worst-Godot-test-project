extends AudioStreamPlayer2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		#set_stream(AudioStream.new())
		set_volume_db(randf() * 50)
		set_pitch_scale(randf() * 50)
		_set_playing(bool(randi()%2))
		set_autoplay(bool(randi()%2))
		set_stream_paused(bool(randi()%2))
		set_max_distance(randf() * 50)
		set_attenuation(randf() * 50)
		set_bus(get_bus())
		set_area_mask(randi()%50)
		play()
		seek(randf() * 50)
		stop()
		
		qq += str(get_playback_position())
		qq += str(get_stream_playback())
		
		
		if Autoload.WRONG_BUGS:
			set_stream(AudioStream.new())
			set_volume_db(randf() * 1000 - 500)
			set_pitch_scale(randf() * 1000 - 500)
			_set_playing(bool(randi()%2))
			set_autoplay(bool(randi()%2))
			set_stream_paused(bool(randi()%2))
			set_max_distance(randf() * 1000 - 500)
			set_attenuation(randf() * 1000 - 500)
			set_bus("ŹcŻΩŒno")
			set_area_mask(randi() % 1000 - 500)
			play()
			seek(randf() * 1000 - 500)
			stop()
