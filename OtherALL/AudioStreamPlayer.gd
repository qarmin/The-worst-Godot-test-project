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
			set_mix_target(randi() % Autoload.RANGE - Autoload.RANGE / 2)# MixTarget
		if randi() % 2 == 1:
			set_bus("asfqwfafasfa")
			
			
		if randi() % 2 == 1:
			qq += str(get_playback_position())
		if randi() % 2 == 1:
			qq += str(get_stream_playback())
			
		if randi() % 2 == 1:
			play()
		if randi() % 2 == 1:
			seek(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			stop()
