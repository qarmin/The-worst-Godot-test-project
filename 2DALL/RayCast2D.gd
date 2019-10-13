extends RayCast2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process_physics(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

		if randi() % 2 == 1:
			clear_exceptions()
		if randi() % 2 == 1:
			set_enabled(Autoload.get_bool())
		if randi() % 2 == 1:
			set_exclude_parent_body(Autoload.get_bool())
		if randi() % 2 == 1:
			set_cast_to(Vector2(Autoload.get_float(), Autoload.get_float()))
		if randi() % 2 == 1:
			set_collision_mask(Autoload.get_int())
		if randi() % 2 == 1:
			set_collide_with_areas(Autoload.get_bool())
		if randi() % 2 == 1:
			set_collide_with_bodies(Autoload.get_bool())
		if randi() % 2 == 1:
			add_exception(get_tree().get_root())
		if randi() % 2 == 1:
			add_exception_rid(RID())
		if randi() % 2 == 1:
			force_raycast_update()
		if randi() % 2 == 1:
			qq += str(get_collider())
		if randi() % 2 == 1:
			qq += str(get_collider_shape())
		if randi() % 2 == 1:
			qq += str(get_collision_mask_bit(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(get_collision_normal())
		if randi() % 2 == 1:
			qq += str(get_collision_point())
		if randi() % 2 == 1:
			qq += str(is_colliding())
		if randi() % 2 == 1:
			remove_exception(get_tree().get_root())
		if randi() % 2 == 1:
			remove_exception_rid(RID())
		if randi() % 2 == 1:
			set_collision_mask_bit(Autoload.get_int(),Autoload.get_bool())
