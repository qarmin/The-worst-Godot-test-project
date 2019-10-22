extends KinematicBody

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_KinematicBody : KinematicBody, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_KinematicBody)
		AutoObjects.A_Node(q_KinematicBody)
		AutoObjects.A_Spatial(q_KinematicBody)
		AutoObjects.A_CollisionObject(q_KinematicBody)
		AutoObjects.A_PhysicsBody(q_KinematicBody)
		
	if randi() % 2 == 1:
		q_KinematicBody.set_axis_lock(Autoload.get_int(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_KinematicBody.set_safe_margin(Autoload.get_float())

	if randi() % 2 == 1:
		q_KinematicBody.get_floor_velocity()

	if randi() % 2 == 1:
		for j in q_KinematicBody.get_slide_count():
			q_KinematicBody.get_slide_collision(j).collider.name

	if randi() % 2 == 1:
		q_KinematicBody.is_on_ceiling()
	if randi() % 2 == 1:
		q_KinematicBody.is_on_floor()

	if Autoload.SLOW_FUNCTIONS:
		q_KinematicBody.move_and_collide(Autoload.get_vector3(),Autoload.get_bool(),Autoload.get_bool(),Autoload.get_bool())
		q_KinematicBody.move_and_slide(Autoload.get_vector3(), Autoload.get_vector3(),Autoload.get_bool(),Autoload.get_int(), Autoload.get_float(), Autoload.get_bool())
		q_KinematicBody.move_and_slide_with_snap(Autoload.get_vector3(), Autoload.get_vector3(), Autoload.get_vector3(),Autoload.get_bool(),Autoload.get_int(),Autoload.get_float(),Autoload.get_bool())

		q_KinematicBody.test_move( Autoload.get_transform(), Autoload.get_vector3(),Autoload.get_bool())
