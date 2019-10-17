extends TouchScreenButton

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Node2D(self)
		nodeFunction(self)

func nodeFunction(q_TouchScreenButton : TouchScreenButton) -> void:

		if randi() % 2 == 1:
			q_TouchScreenButton.set_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			q_TouchScreenButton.set_texture_pressed(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			q_TouchScreenButton.set_bitmask(Autoload.loadA("Bitmap.tres"))
		if randi() % 2 == 1:
			q_TouchScreenButton.set_shape(Autoload.loadA("CircleShape2D.tres"))
		if randi() % 2 == 1:
			q_TouchScreenButton.set_shape_centered(Autoload.get_bool())
		if randi() % 2 == 1:
			q_TouchScreenButton.set_shape_visible(Autoload.get_bool())
		if randi() % 2 == 1:
			q_TouchScreenButton.set_passby_press(Autoload.get_bool())
		if randi() % 2 == 1:
			q_TouchScreenButton.set_action(str(Autoload.get_int()))
		if randi() % 2 == 1:
			q_TouchScreenButton.set_visibility_mode(Autoload.get_int())
