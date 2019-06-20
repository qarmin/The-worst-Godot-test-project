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
		
		var q_AudioEffectStereoEnhance : AudioEffectStereoEnhance = AudioEffectStereoEnhance.new()
		
		q_AudioEffectStereoEnhance.set_pan_pullout(randf() * 50)
		q_AudioEffectStereoEnhance.set_time_pullout(randf() * 50)
		q_AudioEffectStereoEnhance.set_surround(randf() * 50)
		
		if Autoload.WRONG_BUGS:
			q_AudioEffectStereoEnhance.set_pan_pullout(randf() * 1000 - 500)
			q_AudioEffectStereoEnhance.set_time_pullout(randf() * 1000 - 500)
			q_AudioEffectStereoEnhance.set_surround(randf() * 1000 - 500)
