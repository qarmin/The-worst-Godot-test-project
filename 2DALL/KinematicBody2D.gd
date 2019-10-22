extends KinematicBody2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_KinematicBody2D : KinematicBody2D, can_reset : bool = false) -> void:

	if randi()%2 == 1:
		AutoObjects.A_Object(q_KinematicBody2D)
		AutoObjects.A_Node(q_KinematicBody2D)
		AutoObjects.A_CanvasItem(q_KinematicBody2D)
		AutoObjects.A_Node2D(q_KinematicBody2D)
		AutoObjects.A_CollisionObject2D(q_KinematicBody2D)
		AutoObjects.A_PhysicsBody2D(q_KinematicBody2D)
		
	if randi() % 2 == 1:
		q_KinematicBody2D.set_safe_margin(Autoload.get_float())
	if randi() % 2 == 1:
		q_KinematicBody2D.set_sync_to_physics(Autoload.get_bool())

	if randi() % 2 == 1:
		q_KinematicBody2D.get_floor_velocity()
	if randi() % 2 == 1:
		for j in q_KinematicBody2D.get_slide_count():
			q_KinematicBody2D.get_slide_collision(j).collider.name
	if randi() % 2 == 1:
		q_KinematicBody2D.is_on_ceiling()
	if randi() % 2 == 1:
		q_KinematicBody2D.is_on_floor()
	if randi() % 2 == 1:
		if Autoload.SLOW_FUNCTIONS:
			q_KinematicBody2D.move_and_collide(Autoload.get_vector2(),Autoload.get_bool(),Autoload.get_bool(),Autoload.get_bool())
			q_KinematicBody2D.move_and_slide(Autoload.get_vector2(), Autoload.get_vector2(),Autoload.get_bool(),Autoload.get_int(), Autoload.get_float(), Autoload.get_bool())
			q_KinematicBody2D.move_and_slide_with_snap(Autoload.get_vector2(), Autoload.get_vector2(), Autoload.get_vector2(),Autoload.get_bool(),Autoload.get_int(),Autoload.get_float(),Autoload.get_bool())

			q_KinematicBody2D.test_move( Autoload.get_transform2d(),Autoload.get_vector2(),Autoload.get_bool())
