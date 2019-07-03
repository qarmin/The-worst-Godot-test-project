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
		
		var q_AudioEffectFilter : AudioEffectFilter = AudioEffectFilter.new()
		
		q_AudioEffectFilter.set_cutoff(randf() * 50)
		q_AudioEffectFilter.set_resonance(randf() * 50)
		q_AudioEffectFilter.set_gain(randf() * 50)
		q_AudioEffectFilter.set_db(randi() % 4) #FilterDB
		
		if Autoload.WRONG_BUGS:
			q_AudioEffectFilter.set_cutoff(randf() * 1000 - 500)
			q_AudioEffectFilter.set_resonance(randf() * 1000 - 500)
			q_AudioEffectFilter.set_gain(randf() * 1000 - 500)
			q_AudioEffectFilter.set_db(randi() % 1000 - 500) #FilterDB
