extends RayCast

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_Spatial(self)
		nodeFunction(self)

func nodeFunction(q_RayCast : RayCast) -> void:

	if randi() % 2 == 1:
		q_RayCast.set_enabled(Autoload.get_bool())
	if randi() % 2 == 1:
		q_RayCast.set_exclude_parent_body(Autoload.get_bool())
	if randi() % 2 == 1:
		q_RayCast.set_cast_to(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_RayCast.set_collision_mask(Autoload.get_int())
	if randi() % 2 == 1:
		q_RayCast.set_collide_with_areas(Autoload.get_bool())
	if randi() % 2 == 1:
		q_RayCast.set_collide_with_bodies(Autoload.get_bool())

	if randi() % 2 == 1:
		q_RayCast.add_exception(get_parent())
	if randi() % 2 == 1:
		q_RayCast.add_exception_rid(RID())
	if randi() % 2 == 1:
		q_RayCast.clear_exceptions()
	if randi() % 2 == 1:
		q_RayCast.force_raycast_update()
	if randi() % 2 == 1:
		q_RayCast.get_collider()
	if randi() % 2 == 1:
		q_RayCast.get_collider_shape()
	if randi() % 2 == 1:
		q_RayCast.get_collision_mask_bit(Autoload.get_int())
	if randi() % 2 == 1:
		q_RayCast.get_collision_normal()
	if randi() % 2 == 1:
		q_RayCast.get_collision_point()
	if randi() % 2 == 1:
		q_RayCast.is_colliding()
	if randi() % 2 == 1:
		q_RayCast.remove_exception(self)
	if randi() % 2 == 1:
		q_RayCast.remove_exception_rid(RID())
	if randi() % 2 == 1:
		q_RayCast.set_collision_mask_bit(Autoload.get_int(),Autoload.get_bool())
