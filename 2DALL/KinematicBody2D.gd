extends KinematicBody2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)
var right = false

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _physics_process(delta) -> void:
	counter -= delta

	if position.x > 1280:
		right = false
	elif position.x < 0:
		right = true

	if counter <= 0:
		var qq : String = ""
		
		for i in get_children():
			if i.get_name().begins_with("Collision"):
				i.set_disabled(bool(randi()%2))
				i.set_shape(i.get_shape())
				i.set_one_way_collision(bool(randi()%2))
				i.set_one_way_collision_margin(randf() * 50)

		set_safe_margin(randf() * 50)
		set_sync_to_physics(bool(randi()%2))

		qq += str(get_floor_velocity())
		for j in get_slide_count():
			qq += str(get_slide_collision(j).collider.name)
		qq += str(is_on_ceiling())
		qq += str(is_on_floor())
		#BBBBBBBBBBBBBBBBBBBBBBBBBBBif !is_sync_to_physics_enabled():
			#BBBBBBBBBBBBBBBBBBBBBBBBBBBqq += str(move_and_collide(Vector2((int(right) * 2 - 1) * delta * 100,0),bool(randi()%2),bool(randi()%2),bool(randi()%2)))
			#BBBBBBBBBBBBBBBBBBBBBBBBBBBqq += str(move_and_slide(Vector2((int(right) * 2 - 1) * delta * 100,0), Vector2(0,1),bool(randi()%2),randi()%10, randf(), bool(randi()%2)))
			#BBBBBBBBBBBBBBBBBBBBBBBBBBBqq += str(move_and_slide_with_snap(Vector2((int(right) * 2 - 1) * delta * 100,0), Vector2(0.4,0), Vector2(0,1),bool(randi()%2),randi()%10,randf(),bool(randi()%2)))

		#BBBBBBBBBBBBBBBBBBBBBBBBBBBqq += str(test_move( Transform2D(0.0, Vector2(11,11)), Vector2(11.11,124.12),bool(randi()%2) ))
		
		# Physics Body
		_set_layers(randi()%20)
		set_collision_layer(randi()%50000)
		set_collision_mask(randi()%50000)
		
		#add_collision_exception_with(self)
		
		qq += str(get_collision_exceptions())
		qq += str(get_collision_layer_bit(randi()%20))
		qq += str(get_collision_mask_bit(randi()%20))
		
		remove_collision_exception_with(self)
		
		set_collision_layer_bit(randi()%20,bool(randi()%2))
		set_collision_mask_bit(randi()%20,bool(randi()%2))
		
		# Collision Object
		set_pickable(bool(randi()%2))
		
		###_input_event(get_viewport(), InputEvent.new(), 0)
		
		qq += str(create_shape_owner(self))
		
		qq += str(get_rid())
		qq += str(get_shape_owner_one_way_collision_margin(0))
		qq += str(get_shape_owners())
		
		qq += str(is_shape_owner_disabled(0))
		qq += str(is_shape_owner_one_way_collision_enabled(0))
		
		#remove_shape_owner(0)
		
		qq += str(shape_find_owner(0))
		#shape_owner_add_shape(0,Shape2D.new())
		#shape_owner_clear_shapes(0)
		qq += str(shape_owner_get_owner(0))
		qq += str(shape_owner_get_shape(0,0))
		qq += str(shape_owner_get_shape_count(0))
		qq += str(shape_owner_get_shape_index(0,0))
		qq += str(shape_owner_get_transform(0))
		shape_owner_remove_shape(0,0)
		shape_owner_set_disabled(0,bool(randi()%2))
		shape_owner_set_one_way_collision(0,bool(randi()%2))
		shape_owner_set_one_way_collision_margin(0,randf() * 50)
		shape_owner_set_transform(0, Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		
		
		
		
		## With Errors
		if Autoload.WRONG_BUGS:
			for i in get_children():
				if i.get_name().begins_with("Collision"):
					i.set_disabled(bool(randi()%2))
					i.set_shape(i.get_shape())
					i.set_one_way_collision(bool(randi()%2))
					i.set_one_way_collision_margin(randf() * 1000 - 500)
	
			set_safe_margin(randf() * 1000 - 500)
			set_sync_to_physics(bool(randi()%2))

			qq += str(get_floor_velocity())
			for j in get_slide_count():
				qq += str(get_slide_collision(j).collider.name)
			qq += str(is_on_ceiling())
			qq += str(is_on_floor())
			#BBBBBBBBBBBBBBBBBBBBBBBBBBBif !is_sync_to_physics_enabled():
				#BBBBBBBBBBBBBBBBBBBBBBBBBBBqq += str(move_and_collide(Vector2(randf() * 1000 - 500, randf() * 1000 - 500),bool(randi()%2),bool(randi()%2),bool(randi()%2)))
				#BBBBBBBBBBBBBBBBBBBBBBBBBBBqq += str(move_and_slide(Vector2(randf() * 1000 - 500, randf() * 1000 - 500), Vector2(randf() * 1000 - 500, randf() * 1000 - 500),bool(randi()%2),randi() % 1000 - 500, randf() * 1000 - 500, bool(randi()%2)))
				#BBBBBBBBBBBBBBBBBBBBBBBBBBBqq += str(move_and_slide_with_snap(Vector2(randf() * 1000 - 500, randf() * 1000 - 500), Vector2(randf() * 1000 - 500, randf() * 1000 - 500), Vector2(randf() * 1000 - 500, randf() * 1000 - 500),bool(randi()%2),randi() % 1000 - 500,randf() * 1000 - 500,bool(randi()%2)))

			#BBBBBBBBBBBBBBBBBBBBBBBBBBBqq += str(test_move( Transform2D(randf() * 1000 - 500, Vector2(randf() * 1000 - 500, randf() * 1000 - 500)), Vector2(randf() * 1000 - 500, randf() * 1000 - 500)))

			qq = qq
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
