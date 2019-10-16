extends TextureButton

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_normal_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_pressed_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_hover_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_disabled_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_focused_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_click_mask(Autoload.loadA("Bitmap.tres"))
		if randi() % 2 == 1:
			set_expand(Autoload.get_bool())
		if randi() % 2 == 1:
			set_stretch_mode(Autoload.get_int())
