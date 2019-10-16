extends TextureRect

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_expand(Autoload.get_bool())
		if randi() % 2 == 1:
			set_stretch_mode(Autoload.get_int())
		if randi() % 2 == 1:
			set_flip_h(Autoload.get_bool())
		if randi() % 2 == 1:
			set_flip_v(Autoload.get_bool())
