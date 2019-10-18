extends Node2D

var q_AnimatedTexture : AnimatedTexture = AnimatedTexture.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_AnimatedTexture = AnimatedTexture.new()

		if randi() % 2 == 1:
			q_AnimatedTexture.set_frames(Autoload.get_int())
		if randi() % 2 == 1:
			q_AnimatedTexture.set_fps(Autoload.get_float())

		if randi() % 2 == 1:
			Autoload.qq = str(q_AnimatedTexture.get_frame_delay(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(q_AnimatedTexture.get_frame_texture(Autoload.get_int()))

		if randi() % 2 == 1:
			q_AnimatedTexture.set_frame_delay(Autoload.get_int(),Autoload.get_float())
		if randi() % 2 == 1:
			q_AnimatedTexture.set_frame_texture(Autoload.get_int(),Autoload.loadA("Sprite.png"))
