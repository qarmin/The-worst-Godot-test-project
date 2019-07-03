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
		
		var q_AudioEffectReverb : AudioEffectReverb = AudioEffectReverb.new()
		
		q_AudioEffectReverb.set_predelay_msec(randf() * 50)
		q_AudioEffectReverb.set_predelay_feedback(randf() * 50)
		q_AudioEffectReverb.set_room_size(randf() * 50)
		q_AudioEffectReverb.set_damping(randf() * 50)
		q_AudioEffectReverb.set_spread(randf() * 50)
		q_AudioEffectReverb.set_hpf(randf() * 50)
		q_AudioEffectReverb.set_dry(randf() * 50)
		q_AudioEffectReverb.set_wet(randf() * 50)
		
		if Autoload.WRONG_BUGS:
			q_AudioEffectReverb.set_predelay_msec(randf() * 1000 - 500)
			q_AudioEffectReverb.set_predelay_feedback(randf() * 1000 - 500)
			q_AudioEffectReverb.set_room_size(randf() * 1000 - 500)
			q_AudioEffectReverb.set_damping(randf() * 1000 - 500)
			q_AudioEffectReverb.set_spread(randf() * 1000 - 500)
			q_AudioEffectReverb.set_hpf(randf() * 1000 - 500)
			q_AudioEffectReverb.set_dry(randf() * 1000 - 500)
			q_AudioEffectReverb.set_wet(randf() * 1000 - 500)
