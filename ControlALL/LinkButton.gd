extends LinkButton

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_LinkButton : LinkButton, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_LinkButton)
		AutoObjects.A_Node(q_LinkButton)
		AutoObjects.A_CanvasItem(q_LinkButton)
		AutoObjects.A_Control(q_LinkButton)
		AutoObjects.A_BaseButton(q_LinkButton)
		
	if randi() % 2 == 1:
		q_LinkButton.set_text(Autoload.get_string())
	if randi() % 2 == 1:
		q_LinkButton.set_underline_mode(Autoload.get_int()) # Underline
