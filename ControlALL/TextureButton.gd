extends TextureButton

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Control(self)
		AutoObjects.A_BaseButton(self)
		nodeFunction(self)

func nodeFunction(q_TextureButton : TextureButton) -> void:

		if randi() % 2 == 1:
			q_TextureButton.set_normal_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			q_TextureButton.set_pressed_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			q_TextureButton.set_hover_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			q_TextureButton.set_disabled_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			q_TextureButton.set_focused_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			q_TextureButton.set_click_mask(Autoload.loadA("Bitmap.tres"))
		if randi() % 2 == 1:
			q_TextureButton.set_expand(Autoload.get_bool())
		if randi() % 2 == 1:
			q_TextureButton.set_stretch_mode(Autoload.get_int())
