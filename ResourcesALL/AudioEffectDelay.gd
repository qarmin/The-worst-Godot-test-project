extends Node2D

var q_AudioEffectDelay : AudioEffectDelay = AudioEffectDelay.new()
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
			q_AudioEffectDelay = AudioEffectDelay.new()
			
		
		if randi() % 2 == 1:
			q_AudioEffectDelay.set_dry(Autoload.get_float())
			
		if randi() % 2 == 1:
			q_AudioEffectDelay.set("tap" + Autoload.get_string() + "/active",Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectDelay.set("tap" + Autoload.get_string() + "/delay_ms",Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectDelay.set("tap" + Autoload.get_string() + "/level_db",Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectDelay.set("tap" + Autoload.get_string() + "/pan",Autoload.get_float())
			
		if randi() % 2 == 1:
			q_AudioEffectDelay.set("feedback/delay_ms",Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectDelay.set("feedback/level_db",Autoload.get_float())
		if randi() % 2 == 1:
			q_AudioEffectDelay.set("feedback/lowpass",Autoload.get_float())
