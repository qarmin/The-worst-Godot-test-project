extends RayCast2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Node2D(self)
		nodeFunction(self)

func nodeFunction(q_RayCast2D : RayCast2D) -> void:

	if randi() % 2 == 1:
		q_RayCast2D.clear_exceptions()
	if randi() % 2 == 1:
		q_RayCast2D.set_enabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_RayCast2D.set_exclude_parent_body(Autoload.get_bool())
	if randi() % 2 == 1:
		q_RayCast2D.set_cast_to(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_RayCast2D.set_collision_mask(Autoload.get_int())
	if randi() % 2 == 1:
		q_RayCast2D.set_collide_with_areas(Autoload.get_bool())
	if randi() % 2 == 1:
		q_RayCast2D.set_collide_with_bodies(Autoload.get_bool())
	if randi() % 2 == 1:
		q_RayCast2D.add_exception(get_tree().get_root())
	if randi() % 2 == 1:
		q_RayCast2D.add_exception_rid(RID())
	if randi() % 2 == 1:
		q_RayCast2D.force_raycast_update()
	if randi() % 2 == 1:
		q_RayCast2D.get_collider()
	if randi() % 2 == 1:
		q_RayCast2D.get_collider_shape()
	if randi() % 2 == 1:
		q_RayCast2D.get_collision_mask_bit(Autoload.get_int())
	if randi() % 2 == 1:
		q_RayCast2D.get_collision_normal()
	if randi() % 2 == 1:
		q_RayCast2D.get_collision_point()
	if randi() % 2 == 1:
		q_RayCast2D.is_colliding()
	if randi() % 2 == 1:
		q_RayCast2D.remove_exception(get_tree().get_root())
	if randi() % 2 == 1:
		q_RayCast2D.remove_exception_rid(RID())
	if randi() % 2 == 1:
		q_RayCast2D.set_collision_mask_bit(Autoload.get_int(),Autoload.get_bool())
