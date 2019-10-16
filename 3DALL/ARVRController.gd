extends ARVRController

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_controller_id(Autoload.get_int())
		if randi() % 2 == 1:
			set_rumble(Autoload.get_float())

		if randi() % 2 == 1:
			Autoload.qq = str(get_controller_name())
		if randi() % 2 == 1:
			Autoload.qq = str(get_hand())
		if randi() % 2 == 1:
			Autoload.qq = str(get_is_active())
		if randi() % 2 == 1:
			Autoload.qq = str(get_joystick_axis(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_joystick_id())
		if randi() % 2 == 1:
			Autoload.qq = str(get_mesh())
		if randi() % 2 == 1:
			Autoload.qq = str(is_button_pressed(Autoload.get_int()))
