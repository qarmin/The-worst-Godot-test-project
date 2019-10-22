extends SliderJoint

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_SliderJoint : SliderJoint, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_SliderJoint)
		AutoObjects.A_Node(q_SliderJoint)
		AutoObjects.A_Spatial(q_SliderJoint)
		AutoObjects.A_Joint(q_SliderJoint)

	if randi() % 2 == 1:
		set("linear_limit/upper_distance",Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_limit/lower_distance",Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_limit/softness",Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_limit/restitution",Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_limit/damping",Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_motion/softness",Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_motion/restitution",Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_motion/damping",Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_ortho/softness",Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_ortho/restitution",Autoload.get_float())
	if randi() % 2 == 1:
		set("linear_ortho/damping",Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit/upper_angle",Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit/lower_angle",Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit/softness",Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit/restitution",Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_limit/damping",Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_motion/softness",Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_motion/restitution",Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_motion/damping",Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_ortho/softness",Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_ortho/restitution",Autoload.get_float())
	if randi() % 2 == 1:
		set("angular_ortho/damping",Autoload.get_float())
