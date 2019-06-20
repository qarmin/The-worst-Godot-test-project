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
		
		var q_AudioEffectDelay : AudioEffectDelay = AudioEffectDelay.new()
		
		q_AudioEffectDelay.set_dry(randf() * 50)
		for i in range(2):
			q_AudioEffectDelay.set("tap" + str(i+1) + "/active",randf() * 50)
			q_AudioEffectDelay.set("tap" + str(i+1) + "/delay_ms",randf() * 50)
			q_AudioEffectDelay.set("tap" + str(i+1) + "/level_db",randf() * 50)
			q_AudioEffectDelay.set("tap" + str(i+1) + "/pan",randf() * 50)
		
		q_AudioEffectDelay.set("feedback/delay_ms",randf() * 50)
		q_AudioEffectDelay.set("feedback/level_db",randf() * 50)
		q_AudioEffectDelay.set("feedback/lowpass",randf() * 50)
		
		if Autoload.WRONG_BUGS:
			q_AudioEffectDelay.set_dry(randf() * 1000 - 500)
			for i in range(2):
				q_AudioEffectDelay.set("tap" + str(i+1) + "/active",randf() * 1000 - 500)
				q_AudioEffectDelay.set("tap" + str(i+1) + "/delay_ms",randf() * 1000 - 500)
				q_AudioEffectDelay.set("tap" + str(i+1) + "/level_db",randf() * 1000 - 500)
				q_AudioEffectDelay.set("tap" + str(i+1) + "/pan",randf() * 1000 - 500)
			
			q_AudioEffectDelay.set("feedback/delay_ms",randf() * 1000 - 500)
			q_AudioEffectDelay.set("feedback/level_db",randf() * 1000 - 500)
			q_AudioEffectDelay.set("feedback/lowpass",randf() * 1000 - 500)
