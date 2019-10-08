extends AudioStreamPlayer2D

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
		if !Autoload.RANDI:
			
			#set_stream(load("res://RES/AudioStreamGenerator.tres"))
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
				set_stream(load("res://RES/AudioStreamGenerator.tres"))
				set_volume_db(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_pitch_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				_set_playing(bool(randi()%2))
				set_autoplay(bool(randi()%2))
				set_stream_paused(bool(randi()%2))
				set_max_distance(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_attenuation(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_bus("ŹcŻΩŒno")
				set_area_mask(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				play()
				seek(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				stop()
		else: #RANDI
			if randi() % 2 == 1:
				set_stream(load("res://RES/AudioStreamGenerator.tres"))
			if randi() % 2 == 1:
				set_volume_db(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_pitch_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				_set_playing(bool(randi()%2))
			if randi() % 2 == 1:
				set_autoplay(bool(randi()%2))
			if randi() % 2 == 1:
				set_stream_paused(bool(randi()%2))
			if randi() % 2 == 1:
				set_max_distance(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_attenuation(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_bus("ŹcŻΩŒno")
			if randi() % 2 == 1:
				set_area_mask(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				play()
			if randi() % 2 == 1:
				seek(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				stop()
