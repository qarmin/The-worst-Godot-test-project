extends Generic6DOFJoint3D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_Generic6DOFJoint3D: Generic6DOFJoint3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Generic6DOFJoint3D)
		AutoObjects.A_Node(q_Generic6DOFJoint3D)
		AutoObjects.A_Node3D(q_Generic6DOFJoint3D)
		AutoObjects.A_Joint3D(q_Generic6DOFJoint3D)

	if randi() % 2 == 1:
		set("linear_limit_x/enabled", Autoload.get_bool())
	if randi() % 2 == 1:
		set("linear_limit_x/upper_distance", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_limit_x/lower_distance", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_limit_x/softness", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_limit_x/restitution", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_limit_x/damping", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_motor_x/enabled", Autoload.get_bool())
	if randi() % 2 == 1:
		set("linear_motor_x/target_velocity", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_motor_x/force_limit", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_spring_x/enabled", Autoload.get_bool())
	if randi() % 2 == 1:
		set("linear_spring_x/stiffness", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_spring_x/damping", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_spring_x/equilibrium_point", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit_x/enabled", Autoload.get_bool())
	if randi() % 2 == 1:
		set("angular_limit_x/upper_angle", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit_x/lower_angle", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit_x/softness", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit_x/restitution", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit_x/damping", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit_x/force_limit", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit_x/erp", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_motor_x/enabled", Autoload.get_bool())
	if randi() % 2 == 1:
		set("angular_motor_x/target_velocity", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_motor_x/force_limit", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_spring_x/enabled", Autoload.get_bool())
	if randi() % 2 == 1:
		set("angular_spring_x/stiffness", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_spring_x/damping", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_spring_x/equilibrium_point", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_limit_y/enabled", Autoload.get_bool())
	if randi() % 2 == 1:
		set("linear_limit_y/upper_distance", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_limit_y/lower_distance", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_limit_y/softness", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_limit_y/restitution", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_limit_y/damping", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_motor_y/enabled", Autoload.get_bool())
	if randi() % 2 == 1:
		set("linear_motor_y/target_velocity", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_motor_y/force_limit", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_spring_y/enabled", Autoload.get_bool())
	if randi() % 2 == 1:
		set("linear_spring_y/stiffness", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_spring_y/damping", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_spring_y/equilibrium_point", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit_y/enabled", Autoload.get_bool())
	if randi() % 2 == 1:
		set("angular_limit_y/upper_angle", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit_y/lower_angle", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit_y/softness", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit_y/restitution", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit_y/damping", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit_y/force_limit", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit_y/erp", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_motor_y/enabled", Autoload.get_bool())
	if randi() % 2 == 1:
		set("angular_motor_y/target_velocity", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_motor_y/force_limit", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_spring_y/enabled", Autoload.get_bool())
	if randi() % 2 == 1:
		set("angular_spring_y/stiffness", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_spring_y/damping", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_spring_y/equilibrium_point", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_limit_z/enabled", Autoload.get_bool())
	if randi() % 2 == 1:
		set("linear_limit_z/upper_distance", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_limit_z/lower_distance", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_limit_z/softness", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_limit_z/restitution", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_limit_z/damping", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_motor_z/enabled", Autoload.get_bool())
	if randi() % 2 == 1:
		set("linear_motor_z/target_velocity", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_motor_z/force_limit", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_spring_z/enabled", Autoload.get_bool())
	if randi() % 2 == 1:
		set("linear_spring_z/stiffness", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_spring_z/damping", Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_spring_z/equilibrium_point", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit_z/enabled", Autoload.get_bool())
	if randi() % 2 == 1:
		set("angular_limit_z/upper_angle", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit_z/lower_angle", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit_z/softness", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit_z/restitution", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit_z/damping", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit_z/force_limit", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit_z/erp", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_motor_z/enabled", Autoload.get_bool())
	if randi() % 2 == 1:
		set("angular_motor_z/target_velocity", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_motor_z/force_limit", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_spring_z/enabled", Autoload.get_bool())
	if randi() % 2 == 1:
		set("angular_spring_z/stiffness", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_spring_z/damping", Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_spring_z/equilibrium_pointint", Autoload.get_float())
	if randi() % 2 == 1:
		set("precision", Autoload.get_int())
