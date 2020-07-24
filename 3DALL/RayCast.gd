extends RayCast3D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_RayCast3D: RayCast3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_RayCast3D)
		AutoObjects.A_Node(q_RayCast3D)
		AutoObjects.A_Node3D(q_RayCast3D)
# SLOW
#	if randi() % 2 == 1:
#		q_RayCast3D.set_enabled(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_RayCast3D.set_exclude_parent_body(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_RayCast3D.set_cast_to(Autoload.get_vector3f(100.0))
#	if randi() % 2 == 1:
#		q_RayCast3D.set_collision_mask(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_RayCast3D.set_collide_with_areas(Autoload.get_bool())
#	if randi() % 2 == 1:
#		q_RayCast3D.set_collide_with_bodies(Autoload.get_bool())
#
#	if randi() % 2 == 1:
#		q_RayCast3D.add_exception(get_parent())
#	if randi() % 2 == 1:
#		q_RayCast3D.add_exception_rid(RID())
#	if randi() % 2 == 1:
#		q_RayCast3D.clear_exceptions()
#	if Autoload.SLOW_FUNCTIONS:
#		if randi() % 2 == 1:
#			q_RayCast3D.force_RayCast3D_update()
#	if randi() % 2 == 1:
#		q_RayCast3D.get_collider()
#	if randi() % 2 == 1:
#		q_RayCast3D.get_collider_shape()
#	if randi() % 2 == 1:
#		q_RayCast3D.get_collision_mask_bit(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_RayCast3D.get_collision_normal()
#	if randi() % 2 == 1:
#		q_RayCast3D.get_collision_point()
#	if randi() % 2 == 1:
#		q_RayCast3D.is_colliding()
#	if randi() % 2 == 1:
#		q_RayCast3D.remove_exception(q_RayCast3D)
#	if randi() % 2 == 1:
#		q_RayCast3D.remove_exception_rid(RID())
#	if randi() % 2 == 1:
#		q_RayCast3D.set_collision_mask_bit(Autoload.get_int(),Autoload.get_bool())
