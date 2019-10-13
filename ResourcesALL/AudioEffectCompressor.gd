extends Node2D

var q_AudioEffectCompressor : AudioEffectCompressor = AudioEffectCompressor.new()
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
			q_AudioEffectCompressor = AudioEffectCompressor.new()
			
		
		if randi() % 2 == 1:
			q_AudioEffectCompressor.set_threshold(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectCompressor.set_ratio(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectCompressor.set_gain(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectCompressor.set_attack_us(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectCompressor.set_release_ms(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectCompressor.set_mix(Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectCompressor.set_sidechain(Autoload.get_string())
