extends KinematicBody3D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_KinematicBody3D : KinematicBody3D, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_KinematicBody3D)
		AutoObjects.A_Node(q_KinematicBody3D)
		AutoObjects.A_Node3D(q_KinematicBody3D)
		AutoObjects.A_CollisionObject3D(q_KinematicBody3D)
		AutoObjects.A_PhysicsBody3D(q_KinematicBody3D)

	if randi() % 2 == 1:
		q_KinematicBody3D.set_axis_lock(Autoload.get_int(),Autoload.get_bool())
	if randi() % 2 == 1:
		q_KinematicBody3D.set_safe_margin(Autoload.get_float())

	if randi() % 2 == 1:
		q_KinematicBody3D.get_floor_velocity()
	if randi() % 2 == 1:
		for j in q_KinematicBody3D.get_slide_count():
			q_KinematicBody3D.get_slide_collision(j).collider.name

	if randi() % 2 == 1:
		q_KinematicBody3D.is_on_ceiling()
	if randi() % 2 == 1:
		q_KinematicBody3D.is_on_floor()
	if randi() % 2 == 1:
		q_KinematicBody3D.is_on_wall()

	if Autoload.SLOW_FUNCTIONS:
		q_KinematicBody3D.move_and_collide(Autoload.get_vector3(),Autoload.get_bool(),Autoload.get_bool(),Autoload.get_bool())
		q_KinematicBody3D.move_and_slide(Autoload.get_vector3(), Autoload.get_vector3(),Autoload.get_bool(),Autoload.get_int(), Autoload.get_float(), Autoload.get_bool())
		q_KinematicBody3D.move_and_slide_with_snap(Autoload.get_vector3(), Autoload.get_vector3(), Autoload.get_vector3(),Autoload.get_bool(),Autoload.get_int(),Autoload.get_float(),Autoload.get_bool())

		q_KinematicBody3D.test_move( Autoload.get_transform(), Autoload.get_vector3(),Autoload.get_bool())
