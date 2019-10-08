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
			
		var q_AudioEffectReverb : AudioEffectReverb = AudioEffectReverb.new()
		if !Autoload.RANDI:
			
			q_AudioEffectReverb.set_predelay_msec(randf() * 50)
			q_AudioEffectReverb.set_predelay_feedback(randf() * 50)
			q_AudioEffectReverb.set_room_size(randf() * 50)
			q_AudioEffectReverb.set_damping(randf() * 50)
			q_AudioEffectReverb.set_spread(randf() * 50)
			q_AudioEffectReverb.set_hpf(randf() * 50)
			q_AudioEffectReverb.set_dry(randf() * 50)
			q_AudioEffectReverb.set_wet(randf() * 50)
			
			if Autoload.WRONG_BUGS:
				q_AudioEffectReverb.set_predelay_msec(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_AudioEffectReverb.set_predelay_feedback(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_AudioEffectReverb.set_room_size(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_AudioEffectReverb.set_damping(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_AudioEffectReverb.set_spread(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_AudioEffectReverb.set_hpf(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_AudioEffectReverb.set_dry(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_AudioEffectReverb.set_wet(randf() * Autoload.RANGE - Autoload.RANGE / 2)

		else: #RANDI
			if randi() % 2 == 1:
				q_AudioEffectReverb.set_predelay_msec(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_AudioEffectReverb.set_predelay_feedback(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_AudioEffectReverb.set_room_size(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_AudioEffectReverb.set_damping(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_AudioEffectReverb.set_spread(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_AudioEffectReverb.set_hpf(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_AudioEffectReverb.set_dry(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_AudioEffectReverb.set_wet(randf() * Autoload.RANGE - Autoload.RANGE / 2)
