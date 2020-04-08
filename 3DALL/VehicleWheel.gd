extends VehicleWheel3D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_VehicleWheel3D : VehicleWheel3D, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_VehicleWheel3D)
		AutoObjects.A_Node(q_VehicleWheel3D)
		AutoObjects.A_Node3D(q_VehicleWheel3D)
		
	if randi() % 2 == 1:
		q_VehicleWheel3D.set_engine_force(Autoload.get_float())
	if randi() % 2 == 1:
		q_VehicleWheel3D.set_brake(Autoload.get_float())
	if randi() % 2 == 1:
		q_VehicleWheel3D.set_steering(Autoload.get_float())
	if randi() % 2 == 1:
		q_VehicleWheel3D.set_use_as_traction(Autoload.get_bool())
	if randi() % 2 == 1:
		q_VehicleWheel3D.set_use_as_steering(Autoload.get_bool())
	if randi() % 2 == 1:
		q_VehicleWheel3D.set_roll_influence(Autoload.get_float())
	if randi() % 2 == 1:
		q_VehicleWheel3D.set_radius(Autoload.get_float())
	if randi() % 2 == 1:
		q_VehicleWheel3D.set_suspension_rest_length(Autoload.get_float())
	if randi() % 2 == 1:
		q_VehicleWheel3D.set_friction_slip(Autoload.get_float())
	if randi() % 2 == 1:
		q_VehicleWheel3D.set_suspension_travel(Autoload.get_float())
	if randi() % 2 == 1:
		q_VehicleWheel3D.set_suspension_stiffness(Autoload.get_float())
	if randi() % 2 == 1:
		q_VehicleWheel3D.set_suspension_max_force(Autoload.get_float())
	if randi() % 2 == 1:
		q_VehicleWheel3D.set_damping_compression(Autoload.get_float())
	if randi() % 2 == 1:
		q_VehicleWheel3D.set_damping_relaxation(Autoload.get_float())

	if randi() % 2 == 1:
		q_VehicleWheel3D.get_rpm()
	if randi() % 2 == 1:
		q_VehicleWheel3D.get_skidinfo()
		
	if randi() % 2 == 1:
		q_VehicleWheel3D.is_in_contact()
