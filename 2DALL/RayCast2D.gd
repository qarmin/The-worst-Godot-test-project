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
		
		clear_exceptions()
		set_enabled(bool(randi()%2))
		set_exclude_parent_body(bool(randi()%2))
		set_cast_to(Vector2(randf() * 50,randf() * 50))
		set_collision_mask(randi()%4095)
		set_collide_with_areas(bool(randi()%2))
		set_collide_with_bodies(bool(randi()%2))
		#add_exception(get_tree().get_root().get_child(get_child_count() - 1).get_child(randi() % get_child_count() - 1))
		#add_exception_rid()
		#force_raycast_update()
		qq += str(get_collider())
		qq += str(get_collider_shape())
		qq += str(get_collision_mask_bit(randi()%20))
		qq += str(get_collision_normal())
		qq += str(get_collision_point())
		qq += str(is_colliding())
		#remove_exception(get_tree().get_root().get_child(get_child_count() - 1).get_child(randi() % get_child_count() - 1))
		#remove_exception_rid(RID(get_tree().get_root().get_child(get_child_count() - 1).get_child(randi() % get_child_count() - 1)))
		set_collision_mask_bit(randi()%20,bool(randi()%2))
		
		if Autoload.WRONG_BUGS:
			clear_exceptions()
			set_enabled(bool(randi()%2))
			set_exclude_parent_body(bool(randi()%2))
			set_cast_to(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
			set_collision_mask(randi() % 1000 - 500)
			set_collide_with_areas(bool(randi()%2))
			set_collide_with_bodies(bool(randi()%2))
			add_exception(get_tree().get_root())
			add_exception_rid(RID())
			force_raycast_update()
			qq += str(get_collider())
			qq += str(get_collider_shape())
			qq += str(get_collision_mask_bit(randi() % 1000 - 500))
			qq += str(get_collision_normal())
			qq += str(get_collision_point())
			qq += str(is_colliding())
			remove_exception(get_tree().get_root())
			remove_exception_rid(RID())
			set_collision_mask_bit(randi() % 1000 - 500,bool(randi()%2))
