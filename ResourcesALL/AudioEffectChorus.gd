extends Node2D

var q_AudioEffectChorus : AudioEffectChorus = AudioEffectChorus.new()
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
			q_AudioEffectChorus = AudioEffectChorus.new()
			
		
		if randi() % 2 == 1:
			q_AudioEffectChorus.set_voice_count(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AudioEffectChorus.set_dry(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AudioEffectChorus.set_wet(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			
		if randi() % 2 == 1:
			q_AudioEffectChorus.set("voice/" + str(randi() % Autoload.RANGE - Autoload.RANGE / 2) + "/delay_ms",randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AudioEffectChorus.set("voice/" + str(randi() % Autoload.RANGE - Autoload.RANGE / 2) + "/rate_hz",randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AudioEffectChorus.set("voice/" + str(randi() % Autoload.RANGE - Autoload.RANGE / 2) + "/depth_ms",randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AudioEffectChorus.set("voice/" + str(randi() % Autoload.RANGE - Autoload.RANGE / 2) + "/level_db",randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AudioEffectChorus.set("voice/" + str(randi() % Autoload.RANGE - Autoload.RANGE / 2) + "/cutoff_hz",randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_AudioEffectChorus.set("voice/" + str(randi() % Autoload.RANGE - Autoload.RANGE / 2) + "/pan",randf() * Autoload.RANGE - Autoload.RANGE / 2)
