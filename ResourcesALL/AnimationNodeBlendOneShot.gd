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
			
		var q_AnimationNodeOneShot : AnimationNodeOneShot = AnimationNodeOneShot.new()
		if !Autoload.RANDI:
			
			q_AnimationNodeOneShot.set_fadein_time(randf() * 50)
			q_AnimationNodeOneShot.set_fadeout_time(randf() * 50)
			q_AnimationNodeOneShot.set_autorestart(bool(randi()%2))
			q_AnimationNodeOneShot.set_autorestart_delay(randf() * 50)
			q_AnimationNodeOneShot.set_autorestart_random_delay(randf() * 50)
			q_AnimationNodeOneShot.set_use_sync(bool(randi()%2))
			
			qq += str(q_AnimationNodeOneShot.get_mix_mode())
			q_AnimationNodeOneShot.set_mix_mode(randi() % 2) # MIX_MODE
			
			if Autoload.WRONG_BUGS:
				q_AnimationNodeOneShot.set_fadein_time(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_AnimationNodeOneShot.set_fadeout_time(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_AnimationNodeOneShot.set_autorestart(bool(randi()%2))
				q_AnimationNodeOneShot.set_autorestart_delay(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_AnimationNodeOneShot.set_autorestart_random_delay(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_AnimationNodeOneShot.set_use_sync(bool(randi()%2))
				
				qq += str(q_AnimationNodeOneShot.get_mix_mode())
				q_AnimationNodeOneShot.set_mix_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) # MIX_MODE

		else: #RANDI
			if randi() % 2 == 1:
				q_AnimationNodeOneShot.set_fadein_time(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_AnimationNodeOneShot.set_fadeout_time(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_AnimationNodeOneShot.set_autorestart(bool(randi()%2))
			if randi() % 2 == 1:
				q_AnimationNodeOneShot.set_autorestart_delay(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_AnimationNodeOneShot.set_autorestart_random_delay(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_AnimationNodeOneShot.set_use_sync(bool(randi()%2))
				
			if randi() % 2 == 1:
				qq += str(q_AnimationNodeOneShot.get_mix_mode())
			if randi() % 2 == 1:
				q_AnimationNodeOneShot.set_mix_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) # MIX_MODE
