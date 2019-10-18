extends VehicleWheel

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_Spatial(self)
		nodeFunction(self)

func nodeFunction(q_VehicleWheel : VehicleWheel) -> void:

	if randi() % 2 == 1:
		q_VehicleWheel.set_use_as_traction(Autoload.get_bool())
	if randi() % 2 == 1:
		q_VehicleWheel.set_use_as_steering(Autoload.get_bool())
	if randi() % 2 == 1:
		q_VehicleWheel.set_roll_influence(Autoload.get_float())
	if randi() % 2 == 1:
		q_VehicleWheel.set_radius(Autoload.get_float())
	if randi() % 2 == 1:
		q_VehicleWheel.set_suspension_rest_length(Autoload.get_float())
	if randi() % 2 == 1:
		q_VehicleWheel.set_friction_slip(Autoload.get_float())
	if randi() % 2 == 1:
		q_VehicleWheel.set_suspension_travel(Autoload.get_float())
	if randi() % 2 == 1:
		q_VehicleWheel.set_suspension_stiffness(Autoload.get_float())
	if randi() % 2 == 1:
		q_VehicleWheel.set_suspension_max_force(Autoload.get_float())
	if randi() % 2 == 1:
		q_VehicleWheel.set_damping_compression(Autoload.get_float())
	if randi() % 2 == 1:
		q_VehicleWheel.set_damping_relaxation(Autoload.get_float())

	if randi() % 2 == 1:
		q_VehicleWheel.get_rpm()
	if randi() % 2 == 1:
		q_VehicleWheel.get_skidinfo()
	if randi() % 2 == 1:
		q_VehicleWheel.is_in_contact()
