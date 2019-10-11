extends Node2D

var q_AudioEffectReverb : AudioEffectReverb = AudioEffectReverb.new()
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
			q_AudioEffectReverb = AudioEffectReverb.new()
			
		
		if randi() % 2 == 1:
			q_AudioEffectReverb.set_predelay_msec(Autoload.get_randf())
		if randi() % 2 == 1:
			q_AudioEffectReverb.set_predelay_feedback(Autoload.get_randf())
		if randi() % 2 == 1:
			q_AudioEffectReverb.set_room_size(Autoload.get_randf())
		if randi() % 2 == 1:
			q_AudioEffectReverb.set_damping(Autoload.get_randf())
		if randi() % 2 == 1:
			q_AudioEffectReverb.set_spread(Autoload.get_randf())
		if randi() % 2 == 1:
			q_AudioEffectReverb.set_hpf(Autoload.get_randf())
		if randi() % 2 == 1:
			q_AudioEffectReverb.set_dry(Autoload.get_randf())
		if randi() % 2 == 1:
			q_AudioEffectReverb.set_wet(Autoload.get_randf())
