extends ARVRController

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_Spatial(self)
		nodeFunction(self)

func nodeFunction(q_ARVRController : ARVRController) -> void:

		if randi() % 2 == 1:
			q_ARVRController.set_controller_id(Autoload.get_int())
		if randi() % 2 == 1:
			q_ARVRController.set_rumble(Autoload.get_float())

		if randi() % 2 == 1:
			q_ARVRController.get_controller_name()
		if randi() % 2 == 1:
			q_ARVRController.get_hand()
		if randi() % 2 == 1:
			q_ARVRController.get_is_active()
		if randi() % 2 == 1:
			q_ARVRController.get_joystick_axis(Autoload.get_int())
		if randi() % 2 == 1:
			q_ARVRController.get_joystick_id()
		if randi() % 2 == 1:
			q_ARVRController.get_mesh()
		if randi() % 2 == 1:
			q_ARVRController.is_button_pressed(Autoload.get_int())
