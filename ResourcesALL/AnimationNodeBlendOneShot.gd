extends Node2D

var q_AnimationNodeOneShot : AnimationNodeOneShot = AnimationNodeOneShot.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_AnimationNodeOneShot = AnimationNodeOneShot.new()

		if randi() % 2 == 1:
			q_AnimationNodeOneShot.set_fadein_time(Autoload.get_float())
		if randi() % 2 == 1:
			q_AnimationNodeOneShot.set_fadeout_time(Autoload.get_float())
		if randi() % 2 == 1:
			q_AnimationNodeOneShot.set_autorestart(Autoload.get_bool())
		if randi() % 2 == 1:
			q_AnimationNodeOneShot.set_autorestart_delay(Autoload.get_float())
		if randi() % 2 == 1:
			q_AnimationNodeOneShot.set_autorestart_random_delay(Autoload.get_float())
		if randi() % 2 == 1:
			q_AnimationNodeOneShot.set_use_sync(Autoload.get_bool())

		if randi() % 2 == 1:
			Autoload.qq = str(q_AnimationNodeOneShot.get_mix_mode())
		if randi() % 2 == 1:
			q_AnimationNodeOneShot.set_mix_mode(Autoload.get_int()) # MIX_MODE
