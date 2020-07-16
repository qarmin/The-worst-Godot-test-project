extends Button

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_Button: Button, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Button)
		AutoObjects.A_Node(q_Button)
		AutoObjects.A_CanvasItem(q_Button)
		AutoObjects.A_Control(q_Button)
		AutoObjects.A_BaseButton(q_Button)

	### START TEMP
	var temp_ImageTexture: ImageTexture = ImageTexture.new()
#?#	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)

	### END TEMP

	if randi() % 2 == 1:
		q_Button.set_text(Autoload.get_string())
	if randi() % 2 == 1:
		q_Button.set_button_icon(temp_ImageTexture)
	if randi() % 2 == 1:
		q_Button.set_flat(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Button.set_clip_text(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Button.set_text_align(Autoload.get_int())  # TextAlign
	if randi() % 2 == 1:
		q_Button.set_text_align(Autoload.get_int())
	if randi() % 2 == 1:
		q_Button.set_expand_icon(Autoload.get_bool())
