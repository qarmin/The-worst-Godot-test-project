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
			q_AudioStreamSample.set_format(randi() % Autoload.RANGE - Autoload.RANGE / 2)#
		if randi() % 2 == 1:
			q_AudioStreamSample.set_loop_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)#LoopMode
		if randi() % 2 == 1:
			q_AudioStreamSample.set_loop_begin(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AudioStreamSample.set_loop_end(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AudioStreamSample.set_mix_rate(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AudioStreamSample.set_stereo(bool(randi()%2))
			
			### qq += str(q_AudioStreamSample.save_to_wav("."))
