extends Node2D

var q_AnimationNodeOneShot : AnimationNodeOneShot = AnimationNodeOneShot.new()
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
			q_AnimationNodeOneShot = AnimationNodeOneShot.new()
		
		if randi() % 2 == 1:
			q_AnimationNodeOneShot.set_fadein_time(Autoload.get_randf())
		if randi() % 2 == 1:
			q_AnimationNodeOneShot.set_fadeout_time(Autoload.get_randf())
		if randi() % 2 == 1:
			q_AnimationNodeOneShot.set_autorestart(bool(randi()%2))
		if randi() % 2 == 1:
			q_AnimationNodeOneShot.set_autorestart_delay(Autoload.get_randf())
		if randi() % 2 == 1:
			q_AnimationNodeOneShot.set_autorestart_random_delay(Autoload.get_randf())
		if randi() % 2 == 1:
			q_AnimationNodeOneShot.set_use_sync(bool(randi()%2))
			
		if randi() % 2 == 1:
			qq += str(q_AnimationNodeOneShot.get_mix_mode())
		if randi() % 2 == 1:
			q_AnimationNodeOneShot.set_mix_mode(Autoload.get_randi()) # MIX_MODE
