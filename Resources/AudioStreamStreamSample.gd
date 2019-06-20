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
		
		var q_AudioStreamSample : AudioStreamSample = AudioStreamSample.new()
		
		q_AudioStreamSample.set_data(PoolByteArray([12421,421,421,4,124,214,214,12,4]))
		q_AudioStreamSample.set_format(randi() % 3)#
		q_AudioStreamSample.set_loop_mode(randi() % 4)#LoopMode
		q_AudioStreamSample.set_loop_begin(randi()%50)
		q_AudioStreamSample.set_loop_end(randi()%50)
		q_AudioStreamSample.set_mix_rate(randi()%50)
		q_AudioStreamSample.set_stereo(bool(randi()%2))
		
		qq += str(q_AudioStreamSample.save_to_wav("."))
		
		if Autoload.WRONG_BUGS:
			q_AudioStreamSample.set_data(PoolByteArray([12421,421,421,4,124,214,214,12,4]))
			q_AudioStreamSample.set_format(randi() % 1000 - 500)#
			q_AudioStreamSample.set_loop_mode(randi() % 1000 - 500)#LoopMode
			q_AudioStreamSample.set_loop_begin(randi() % 1000 - 500)
			q_AudioStreamSample.set_loop_end(randi() % 1000 - 500)
			q_AudioStreamSample.set_mix_rate(randi() % 1000 - 500)
			q_AudioStreamSample.set_stereo(bool(randi()%2))
			
			qq += str(q_AudioStreamSample.save_to_wav("."))