extends SpinBox

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_SpinBox: SpinBox, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_SpinBox)
		AutoObjects.A_Node(q_SpinBox)
		AutoObjects.A_CanvasItem(q_SpinBox)
		AutoObjects.A_Control(q_SpinBox)
		AutoObjects.A_Range(q_SpinBox)

	if randi() % 2 == 1:
		q_SpinBox.set_align(Autoload.get_int())
	if randi() % 2 == 1:
		q_SpinBox.set_editable(Autoload.get_bool())
	if randi() % 2 == 1:
		q_SpinBox.set_prefix(Autoload.get_string())
	if randi() % 2 == 1:
		q_SpinBox.set_suffix(Autoload.get_string())

	if randi() % 2 == 1:
		q_SpinBox.apply()
	if randi() % 2 == 1:
		q_SpinBox.get_line_edit()
