extends RayCast

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if randi() % 2 == 1:
			set_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			set_exclude_parent_body(bool(randi()%2))
		if randi() % 2 == 1:
			set_cast_to(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			set_collision_mask(randi()%500000)
		if randi() % 2 == 1:
			set_collide_with_areas(bool(randi()%2))
		if randi() % 2 == 1:
			set_collide_with_bodies(bool(randi()%2))
			
		if randi() % 2 == 1:
			add_exception(get_parent())
		if randi() % 2 == 1:
			add_exception_rid(RID())
		if randi() % 2 == 1:
			clear_exceptions()
		if randi() % 2 == 1:
			force_raycast_update()
		if randi() % 2 == 1:
			qq += str(get_collider())
		if randi() % 2 == 1:
			qq += str(get_collider_shape())
		if randi() % 2 == 1:
			qq += str(get_collision_mask_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_collision_normal())
		if randi() % 2 == 1:
			qq += str(get_collision_point())
		if randi() % 2 == 1:
			qq += str(is_colliding())
		if randi() % 2 == 1:
			remove_exception(self)
		if randi() % 2 == 1:
			remove_exception_rid(RID())
		if randi() % 2 == 1:
			set_collision_mask_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
