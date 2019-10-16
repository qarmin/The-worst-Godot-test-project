extends AnimatedSprite3D

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_sprite_frames(Autoload.loadA("SpriteFrames.tres"))
		if randi() % 2 == 1:
			set_animation(Autoload.get_string())
		if randi() % 2 == 1:
			set_frame(Autoload.get_bool())
		if randi() % 2 == 1:
			_set_playing(Autoload.get_bool())
		if randi() % 2 == 1:
			Autoload.qq = str(is_playing())
		if randi() % 2 == 1:
			play(Autoload.get_string())
		if randi() % 2 == 1:
			stop()
