extends Node2D

var q_AudioStreamRandomPitch : AudioStreamRandomPitch = AudioStreamRandomPitch.new()
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
			q_AudioStreamRandomPitch = AudioStreamRandomPitch.new()
			
		
		if randi() % 2 == 1:
			q_AudioStreamRandomPitch.set_audio_stream(AudioStream.new())
		if randi() % 2 == 1:
			q_AudioStreamRandomPitch.set_random_pitch(randf() * Autoload.RANGE - Autoload.RANGE / 2)
