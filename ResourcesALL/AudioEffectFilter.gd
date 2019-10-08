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
		if !Autoload.RANDI:
			
			q_AudioEffectFilter.set_cutoff(randf() * 50)
			q_AudioEffectFilter.set_resonance(randf() * 50)
			q_AudioEffectFilter.set_gain(randf() * 50)
			q_AudioEffectFilter.set_db(randi() % 4) #FilterDB
			
			if Autoload.WRONG_BUGS:
				q_AudioEffectFilter.set_cutoff(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_AudioEffectFilter.set_resonance(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_AudioEffectFilter.set_gain(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_AudioEffectFilter.set_db(randi() % Autoload.RANGE - Autoload.RANGE / 2) #FilterDB

		else: #RANDI
			if randi() % 2 == 1:
				q_AudioEffectFilter.set_cutoff(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_AudioEffectFilter.set_resonance(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_AudioEffectFilter.set_gain(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_AudioEffectFilter.set_db(randi() % Autoload.RANGE - Autoload.RANGE / 2) #FilterDB
