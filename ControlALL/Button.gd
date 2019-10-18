extends Button

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

func nodeFunction(q_Button : Button) -> void:

		if randi() % 2 == 1:
			q_Button.set_text(Autoload.get_string())
		if randi() % 2 == 1:
			q_Button.set_button_icon(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			q_Button.set_flat(Autoload.get_bool())
		if randi() % 2 == 1:
			q_Button.set_clip_text(Autoload.get_bool())
		if randi() % 2 == 1:
			q_Button.set_text_align(Autoload.get_int())

