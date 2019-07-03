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
		
		var q_AudioStreamGenerator : AudioStreamGenerator = AudioStreamGenerator.new()
		
		q_AudioStreamGenerator.set_mix_rate(randf() * 50)
		q_AudioStreamGenerator.set_buffer_length(randf() * 50)
		
		if Autoload.WRONG_BUGS:
			q_AudioStreamGenerator.set_mix_rate(randf() * 1000 - 500)
			q_AudioStreamGenerator.set_buffer_length(randf() * 1000 - 500)
