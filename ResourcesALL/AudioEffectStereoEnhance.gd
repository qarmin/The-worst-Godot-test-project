extends Node2D

var q_AudioEffectStereoEnhance : AudioEffectStereoEnhance = AudioEffectStereoEnhance.new()
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
			q_AudioEffectStereoEnhance = AudioEffectStereoEnhance.new()
			
	
		if randi() % 2 == 1:
			q_AudioEffectStereoEnhance.set_pan_pullout(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectStereoEnhance.set_time_pullout(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectStereoEnhance.set_surround(Autoload.get_float())
