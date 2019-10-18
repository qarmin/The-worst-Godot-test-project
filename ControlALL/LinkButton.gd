extends LinkButton

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

func nodeFunction(q_LinkButton : LinkButton) -> void:

		if randi() % 2 == 1:
			q_LinkButton.set_text(str(Autoload.get_int()))
		if randi() % 2 == 1:
			q_LinkButton.set_underline_mode(Autoload.get_int())
