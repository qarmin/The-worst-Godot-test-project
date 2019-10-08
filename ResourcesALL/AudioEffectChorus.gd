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
			
		var q_AudioEffectChorus : AudioEffectChorus = AudioEffectChorus.new()
		if !Autoload.RANDI:
			
			#q_AudioEffectChorus.set_voice_count(randi()%50 + 1)
			q_AudioEffectChorus.set_dry(randf() * 50)
			q_AudioEffectChorus.set_wet(randf() * 50)
			for i in range(4):
				q_AudioEffectChorus.set("voice/" + str(i+1) + "/delay_ms",randf())
				q_AudioEffectChorus.set("voice/" + str(i+1) + "/rate_hz",randf())
				q_AudioEffectChorus.set("voice/" + str(i+1) + "/depth_ms",randf())
				q_AudioEffectChorus.set("voice/" + str(i+1) + "/level_db",randf())
				q_AudioEffectChorus.set("voice/" + str(i+1) + "/cutoff_hz",randf())
				q_AudioEffectChorus.set("voice/" + str(i+1) + "/pan",randf())
			
			if Autoload.WRONG_BUGS:
				q_AudioEffectChorus.set_voice_count(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_AudioEffectChorus.set_dry(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_AudioEffectChorus.set_wet(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				for i in range(4):
					q_AudioEffectChorus.set("voice/" + str(i+1) + "/delay_ms",randf() * Autoload.RANGE - Autoload.RANGE / 2)
					q_AudioEffectChorus.set("voice/" + str(i+1) + "/rate_hz",randf() * Autoload.RANGE - Autoload.RANGE / 2)
					q_AudioEffectChorus.set("voice/" + str(i+1) + "/depth_ms",randf() * Autoload.RANGE - Autoload.RANGE / 2)
					q_AudioEffectChorus.set("voice/" + str(i+1) + "/level_db",randf() * Autoload.RANGE - Autoload.RANGE / 2)
					q_AudioEffectChorus.set("voice/" + str(i+1) + "/cutoff_hz",randf() * Autoload.RANGE - Autoload.RANGE / 2)
					q_AudioEffectChorus.set("voice/" + str(i+1) + "/pan",randf() * Autoload.RANGE - Autoload.RANGE / 2)

		else: #RANDI
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
