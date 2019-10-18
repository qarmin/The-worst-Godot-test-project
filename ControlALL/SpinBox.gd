extends SpinBox

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Control(self)
		AutoObjects.A_Range(self)
		nodeFunction(self)

func nodeFunction(q_SpinBox : SpinBox) -> void:

		if randi() % 2 == 1:
			q_SpinBox.set_align(Autoload.get_int())
		if randi() % 2 == 1:
			q_SpinBox.set_editable(Autoload.get_bool())
		if randi() % 2 == 1:
			q_SpinBox.set_prefix(Autoload.get_string())
		if randi() % 2 == 1:
			q_SpinBox.set_suffix(Autoload.get_string())
		if randi() % 2 == 1:
			q_SpinBox.get_line_edit()
