extends RayCast

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			set_exclude_parent_body(Autoload.get_bool())
		if randi() % 2 == 1:
			set_cast_to(Autoload.get_vector3())
		if randi() % 2 == 1:
			set_collision_mask(Autoload.get_int())
		if randi() % 2 == 1:
			set_collide_with_areas(Autoload.get_bool())
		if randi() % 2 == 1:
			set_collide_with_bodies(Autoload.get_bool())

		if randi() % 2 == 1:
			add_exception(get_parent())
		if randi() % 2 == 1:
			add_exception_rid(RID())
		if randi() % 2 == 1:
			clear_exceptions()
		if randi() % 2 == 1:
			force_raycast_update()
		if randi() % 2 == 1:
			Autoload.qq = str(get_collider())
		if randi() % 2 == 1:
			Autoload.qq = str(get_collider_shape())
		if randi() % 2 == 1:
			Autoload.qq = str(get_collision_mask_bit(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_collision_normal())
		if randi() % 2 == 1:
			Autoload.qq = str(get_collision_point())
		if randi() % 2 == 1:
			Autoload.qq = str(is_colliding())
		if randi() % 2 == 1:
			remove_exception(self)
		if randi() % 2 == 1:
			remove_exception_rid(RID())
		if randi() % 2 == 1:
			set_collision_mask_bit(Autoload.get_int(),Autoload.get_bool())
