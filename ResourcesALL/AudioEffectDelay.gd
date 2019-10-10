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
			q_AudioEffectDelay.set_dry(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			
		if randi() % 2 == 1:
			q_AudioEffectDelay.set("tap" + str(randi() % Autoload.RANGE - Autoload.RANGE / 2) + "/active",randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AudioEffectDelay.set("tap" + str(randi() % Autoload.RANGE - Autoload.RANGE / 2) + "/delay_ms",randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AudioEffectDelay.set("tap" + str(randi() % Autoload.RANGE - Autoload.RANGE / 2) + "/level_db",randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AudioEffectDelay.set("tap" + str(randi() % Autoload.RANGE - Autoload.RANGE / 2) + "/pan",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			
		if randi() % 2 == 1:
			q_AudioEffectDelay.set("feedback/delay_ms",randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AudioEffectDelay.set("feedback/level_db",randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AudioEffectDelay.set("feedback/lowpass",randf() * Autoload.RANGE - Autoload.RANGE / 2)
