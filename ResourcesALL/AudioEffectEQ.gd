extends Node2D

var q_AudioEffectEQ : AudioEffectEQ = AudioEffectEQ.new()
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
			q_AudioEffectEQ = AudioEffectEQ.new()
			
		
		if randi() % 2 == 1:
			qq += str(q_AudioEffectEQ.get_band_count())
		if randi() % 2 == 1:
			qq += str(q_AudioEffectEQ.get_band_gain_db( Autoload.get_int() ))
		if randi() % 2 == 1:
			q_AudioEffectEQ.set_band_gain_db( Autoload.get_int(), Autoload.get_int())
