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
		
		q_AudioEffectChorus.set_voice_count(randi()%50)
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
			q_AudioEffectChorus.set_voice_count(randi() % 1000 - 500)
			q_AudioEffectChorus.set_dry(randf() * 1000 - 500)
			q_AudioEffectChorus.set_wet(randf() * 1000 - 500)
			for i in range(4):
				q_AudioEffectChorus.set("voice/" + str(i+1) + "/delay_ms",randf() * 1000 - 500)
				q_AudioEffectChorus.set("voice/" + str(i+1) + "/rate_hz",randf() * 1000 - 500)
				q_AudioEffectChorus.set("voice/" + str(i+1) + "/depth_ms",randf() * 1000 - 500)
				q_AudioEffectChorus.set("voice/" + str(i+1) + "/level_db",randf() * 1000 - 500)
				q_AudioEffectChorus.set("voice/" + str(i+1) + "/cutoff_hz",randf() * 1000 - 500)
				q_AudioEffectChorus.set("voice/" + str(i+1) + "/pan",randf() * 1000 - 500)
