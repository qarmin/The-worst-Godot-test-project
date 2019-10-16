extends KinematicBody2D

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Node2D(self)
		AutoObjects.A_CollisionObject2D(self)
		AutoObjects.A_PhysicsBody2D(self)
		nodeFunction(self)

func nodeFunction(q_KinematicBody2D : KinematicBody2D) -> void:

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
