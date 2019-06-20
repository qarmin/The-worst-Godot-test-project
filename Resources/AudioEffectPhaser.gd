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
		
		var q_AudioEffectPhaser : AudioEffectPhaser = AudioEffectPhaser.new()
		
		q_AudioEffectPhaser.set_range_min_hz(randf() * 50)
		q_AudioEffectPhaser.set_range_max_hz(randf() * 50)
		q_AudioEffectPhaser.set_rate_hz(randf() * 50)
		q_AudioEffectPhaser.set_feedback(randf() * 50)
		q_AudioEffectPhaser.set_depth(randf() * 50)
		
		if Autoload.WRONG_BUGS:
			q_AudioEffectPhaser.set_range_min_hz(randf() * 1000 - 500)
			q_AudioEffectPhaser.set_range_max_hz(randf() * 1000 - 500)
			q_AudioEffectPhaser.set_rate_hz(randf() * 1000 - 500)
			q_AudioEffectPhaser.set_feedback(randf() * 1000 - 500)
			q_AudioEffectPhaser.set_depth(randf() * 1000 - 500)
