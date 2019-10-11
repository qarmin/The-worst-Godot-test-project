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
			q_AudioEffectChorus.set_voice_count(Autoload.get_randi())
		if randi() % 2 == 1:
			q_AudioEffectChorus.set_dry(Autoload.get_randf())
		if randi() % 2 == 1:
			q_AudioEffectChorus.set_wet(Autoload.get_randf())
			
		if randi() % 2 == 1:
			q_AudioEffectChorus.set("voice/" + str(Autoload.get_randi()) + "/delay_ms",Autoload.get_randf())
		if randi() % 2 == 1:
			q_AudioEffectChorus.set("voice/" + str(Autoload.get_randi()) + "/rate_hz",Autoload.get_randf())
		if randi() % 2 == 1:
			q_AudioEffectChorus.set("voice/" + str(Autoload.get_randi()) + "/depth_ms",Autoload.get_randf())
		if randi() % 2 == 1:
			q_AudioEffectChorus.set("voice/" + str(Autoload.get_randi()) + "/level_db",Autoload.get_randf())
		if randi() % 2 == 1:
			q_AudioEffectChorus.set("voice/" + str(Autoload.get_randi()) + "/cutoff_hz",Autoload.get_randf())
		if randi() % 2 == 1:
			q_AudioEffectChorus.set("voice/" + str(Autoload.get_randi()) + "/pan",Autoload.get_randf())
