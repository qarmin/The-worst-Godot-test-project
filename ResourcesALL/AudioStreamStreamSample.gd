extends Node2D

var q_AudioStreamSample : AudioStreamSample = AudioStreamSample.new()
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
			q_AudioStreamSample = AudioStreamSample.new()
			
		
		if randi() % 2 == 1:
			q_AudioStreamSample.set_data(PoolByteArray([12421,421,421,4,124,214,214,12,4]))
		if randi() % 2 == 1:
			q_AudioStreamSample.set_format(Autoload.get_int())#
		if randi() % 2 == 1:
			q_AudioStreamSample.set_loop_mode(Autoload.get_int())#LoopMode
		if randi() % 2 == 1:
			q_AudioStreamSample.set_loop_begin(Autoload.get_int())
		if randi() % 2 == 1:
			q_AudioStreamSample.set_loop_end(Autoload.get_int())
		if randi() % 2 == 1:
			q_AudioStreamSample.set_mix_rate(Autoload.get_int())
		if randi() % 2 == 1:
			q_AudioStreamSample.set_stereo(Autoload.get_bool())
			
			### qq += str(q_AudioStreamSample.save_to_wav("."))
