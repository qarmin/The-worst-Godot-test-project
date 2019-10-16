extends PhysicalBone

onready var counter : float = Autoload.get_rand_time()

func _physics_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_joint_type(Autoload.get_int()) #JOINT_TYPE
		if randi() % 2 == 1:
			set_joint_offset(Autoload.get_transform())
		if randi() % 2 == 1:
			set_body_offset(Autoload.get_transform())
		if randi() % 2 == 1:
			set_mass(Autoload.get_float())
		if randi() % 2 == 1:
			set_weight(Autoload.get_float())
		if randi() % 2 == 1:
			set_friction(Autoload.get_float())
		if randi() % 2 == 1:
			set_bounce(Autoload.get_float())
		if randi() % 2 == 1:
			set_gravity_scale(Autoload.get_float())

		if randi() % 2 == 1:
			Autoload.qq = str(get_bone_id())
		if randi() % 2 == 1:
			Autoload.qq = str(get_simulate_physics())
		if randi() % 2 == 1:
			Autoload.qq = str(is_simulating_physics())
		if randi() % 2 == 1:
			Autoload.qq = str(is_static_body())
