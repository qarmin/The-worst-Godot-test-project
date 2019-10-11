extends AudioStreamPlayer

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

		if randi() % 2 == 1:
			set_stream(AudioStream.new())
		if randi() % 2 == 1:
			set_volume_db(Autoload.get_randf())
		if randi() % 2 == 1:
			set_pitch_scale(Autoload.get_randf())
		if randi() % 2 == 1:
			_set_playing(bool(randi()%2))
		if randi() % 2 == 1:
			set_autoplay(bool(randi()%2))
		if randi() % 2 == 1:
			set_stream_paused(bool(randi()%2))
		if randi() % 2 == 1:
			set_mix_target(Autoload.get_randi())# MixTarget
		if randi() % 2 == 1:
			set_bus("asfqwfafasfa")
			
			
		if randi() % 2 == 1:
			qq += str(get_playback_position())
		if randi() % 2 == 1:
			qq += str(get_stream_playback())
			
		if randi() % 2 == 1:
			play()
		if randi() % 2 == 1:
			seek(Autoload.get_randf())
		if randi() % 2 == 1:
			stop()
