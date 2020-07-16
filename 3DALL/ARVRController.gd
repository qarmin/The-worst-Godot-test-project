extends XRController3D

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_XRController3D: XRController3D, can_reset: bool = false) -> void:
	AutoObjects.A_Object(q_XRController3D)
	AutoObjects.A_Node(q_XRController3D)
	AutoObjects.A_Node3D(q_XRController3D)

	if can_reset:
		if randi() % 2 == 1:
			q_XRController3D = XRController3D.new()

	if randi() % 2 == 1:
		q_XRController3D.set_controller_id(Autoload.get_int())
	if randi() % 2 == 1:
		q_XRController3D.set_rumble(Autoload.get_float())

	if randi() % 2 == 1:
		q_XRController3D.get_controller_name()
	if randi() % 2 == 1:
		q_XRController3D.get_hand()
	if randi() % 2 == 1:
		q_XRController3D.get_is_active()
	if randi() % 2 == 1:
		q_XRController3D.get_joystick_axis(Autoload.get_int())
	if randi() % 2 == 1:
		q_XRController3D.get_joystick_id()
	if randi() % 2 == 1:
		q_XRController3D.get_mesh()

	if randi() % 2 == 1:
		q_XRController3D.is_button_pressed(Autoload.get_int())
