extends KinematicBody2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _physics_process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq

	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

		if randi() % 2 == 1:
			set_safe_margin(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_sync_to_physics(bool(randi()%2))

		if randi() % 2 == 1:
			qq += str(get_floor_velocity())
		if randi() % 2 == 1:
			for j in get_slide_count():
				qq += str(get_slide_collision(j).collider.name)
		if randi() % 2 == 1:
			qq += str(is_on_ceiling())
		if randi() % 2 == 1:
			qq += str(is_on_floor())
		if randi() % 2 == 1:
			if Autoload.SLOW_FUNCTIONS:
				qq += str(move_and_collide(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),bool(randi()%2),bool(randi()%2),bool(randi()%2)))
				qq += str(move_and_slide(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2), Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),bool(randi()%2),randi() % Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2, bool(randi()%2)))
				qq += str(move_and_slide_with_snap(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2), Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2), Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2),bool(randi()%2),randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2)))
				
				qq += str(test_move( Transform2D(randf() * Autoload.RANGE - Autoload.RANGE / 2, Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)), Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2)))

			# Physics Body
		if randi() % 2 == 1:
			_set_layers(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_collision_layer(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_collision_mask(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			
			#add_collision_exception_with(self)
			
		if randi() % 2 == 1:
			qq += str(get_collision_exceptions())
		if randi() % 2 == 1:
			qq += str(get_collision_layer_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_collision_mask_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			remove_collision_exception_with(self)
			
		if randi() % 2 == 1:
			set_collision_layer_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
		if randi() % 2 == 1:
			set_collision_mask_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
			
			# Collision Object
		if randi() % 2 == 1:
			set_pickable(bool(randi()%2))
			
			###_input_event(get_viewport(), InputEvent.new(), 0)
			
		if randi() % 2 == 1:
			qq += str(create_shape_owner(self))
			
		if randi() % 2 == 1:
			qq += str(get_rid())
		if randi() % 2 == 1:
			qq += str(get_shape_owner_one_way_collision_margin(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(get_shape_owners())
			
		if randi() % 2 == 1:
			qq += str(is_shape_owner_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(is_shape_owner_one_way_collision_enabled(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			remove_shape_owner(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			
		if randi() % 2 == 1:
			qq += str(shape_find_owner(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			shape_owner_add_shape(randi() % Autoload.RANGE - Autoload.RANGE / 2,Autoload.loadA("res://RES/CircleShape2D.tres"))
		if randi() % 2 == 1:
			shape_owner_clear_shapes(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			qq += str(shape_owner_get_owner(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(shape_owner_get_shape(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(shape_owner_get_shape_count(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(shape_owner_get_shape_index(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(shape_owner_get_transform(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			shape_owner_remove_shape(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			shape_owner_set_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
		if randi() % 2 == 1:
			shape_owner_set_one_way_collision(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
		if randi() % 2 == 1:
			shape_owner_set_one_way_collision_margin(randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			shape_owner_set_transform(randi() % Autoload.RANGE - Autoload.RANGE / 2, Transform2D(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
