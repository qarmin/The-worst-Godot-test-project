extends TouchScreenButton

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_TouchScreenButton : TouchScreenButton, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_TouchScreenButton)
		AutoObjects.A_Node(q_TouchScreenButton)
		AutoObjects.A_CanvasItem(q_TouchScreenButton)
		AutoObjects.A_Node2D(q_TouchScreenButton)
		
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
