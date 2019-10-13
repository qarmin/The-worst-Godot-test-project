extends Node2D

var q_AudioEffectFilter : AudioEffectFilter = AudioEffectFilter.new()
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
			q_AudioEffectFilter = AudioEffectFilter.new()
			
		
		if randi() % 2 == 1:
			q_AudioEffectFilter.set_cutoff(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectFilter.set_resonance(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectFilter.set_gain(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectFilter.set_db(Autoload.get_int()) #FilterDB
