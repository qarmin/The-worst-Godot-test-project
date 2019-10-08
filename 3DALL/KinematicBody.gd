extends KinematicBody

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _physics_process(delta):
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if !Autoload.RANDI:
			
			set_axis_lock(Vector3.AXIS_X,bool(randi()%2))
			set_axis_lock(Vector3.AXIS_Y,bool(randi()%2))
			set_axis_lock(Vector3.AXIS_Z,bool(randi()%2))
			set_safe_margin(randf() * 50)
	
			qq += str(get_floor_velocity())
			for j in get_slide_count():
				qq += str(get_slide_collision(j).collider.name)
				
			qq += str(is_on_ceiling())
			qq += str(is_on_floor())
			qq += str(is_on_wall())
			
			if Autoload.SLOW_FUNCTIONS:
				qq += str(move_and_collide(Vector3(randf() * 50,randf() * 50,randf() * 50),bool(randi()%2),bool(randi()%2),bool(randi()%2)))
				qq += str(move_and_slide(Vector3(randf() * 50,randf() * 50,randf() * 50), Vector3(randf() * 50,randf() * 50,randf() * 50),bool(randi()%2),randi()%10, randf(), bool(randi()%2)))
				qq += str(move_and_slide_with_snap(Vector3(randf() * 50,randf() * 50,randf() * 50), Vector3(randf() * 50,randf() * 50,randf() * 50), Vector3(randf() * 50,randf() * 50,randf() * 50),bool(randi()%2),randi()%10,randf(),bool(randi()%2)))
	
				qq += str(test_move( Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)), Vector3(randf() * 50,randf() * 50,randf() * 50),bool(randi()%2)))
			
			# Physics Body
			set_collision_layer(randi()%50000)
			set_collision_mask(randi()%50000)
			
			add_collision_exception_with(self)
			
			qq += str(get_collision_exceptions())
			qq += str(get_collision_layer_bit(randi()%20))
			qq += str(get_collision_mask_bit(randi()%20))
			
			remove_collision_exception_with(self)
			
			set_collision_layer_bit(randi()%20,bool(randi()%2))
			set_collision_mask_bit(randi()%20,bool(randi()%2))
			
			# Collision Object
			set_ray_pickable(bool(randi()%2))
			set_capture_input_on_drag(bool(randi()%2))
			
			###_input_event(get_parent().find_node("Camera"), InputEvent.new(), Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),0)
			
			qq += str(create_shape_owner(self))
			
			qq += str(get_rid())
			qq += str(get_shape_owners())
			
			qq += str(is_shape_owner_disabled(0))
			#remove_shape_owner(0)
			
			#qq += str(shape_find_owner(0))
			#shape_owner_add_shape(0,Shape2D.new())
			#shape_owner_clear_shapes(0)
			qq += str(shape_owner_get_owner(0))
			#qq += str(shape_owner_get_shape(0,0))
			qq += str(shape_owner_get_shape_count(0))
			#qq += str(shape_owner_get_shape_index(0,0))
			qq += str(shape_owner_get_transform(0))
			#shape_owner_remove_shape(0,0)
			shape_owner_set_disabled(0,bool(randi()%2))
			shape_owner_set_transform(0, Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
			
			if Autoload.WRONG_BUGS:
				set_axis_lock(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
				set_safe_margin(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		
				qq += str(get_floor_velocity())
				for j in get_slide_count():
					qq += str(get_slide_collision(j).collider.name)
	
				qq += str(is_on_ceiling())
				qq += str(is_on_floor())
	
				if Autoload.SLOW_FUNCTIONS:
					qq += str(move_and_collide(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),bool(randi()%2),bool(randi()%2),bool(randi()%2)))
					qq += str(move_and_slide(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),bool(randi()%2),randi()%10, randf(), bool(randi()%2)))
					qq += str(move_and_slide_with_snap(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),bool(randi()%2),randi()%10,randf(),bool(randi()%2)))
		
					qq += str(test_move( Transform(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)), Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),bool(randi()%2)))
	
				# Physics Body
				set_collision_layer(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_collision_mask(randi() % Autoload.RANGE - Autoload.RANGE / 2)
	
				add_collision_exception_with(self)
	
				qq += str(get_collision_exceptions())
				qq += str(get_collision_layer_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(get_collision_mask_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2))
	
				remove_collision_exception_with(self)
	
				set_collision_layer_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
				set_collision_mask_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
	
				# Collision Object
				set_ray_pickable(bool(randi()%2))
				set_capture_input_on_drag(bool(randi()%2))
	
				###_input_event(get_parent().find_node("Camera"), InputEvent.new(), Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),randi() % Autoload.RANGE - Autoload.RANGE / 2)
	
				qq += str(create_shape_owner(self))
	
				qq += str(get_rid())
				qq += str(get_shape_owners())
	
				qq += str(is_shape_owner_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				remove_shape_owner(randi() % Autoload.RANGE - Autoload.RANGE / 2)
	
				qq += str(shape_find_owner(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				shape_owner_add_shape(randi() % Autoload.RANGE - Autoload.RANGE / 2,Shape.new())
				shape_owner_clear_shapes(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				qq += str(shape_owner_get_owner(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(shape_owner_get_shape(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(shape_owner_get_shape_count(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(shape_owner_get_shape_index(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(shape_owner_get_transform(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				shape_owner_remove_shape(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2)
				shape_owner_set_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
				shape_owner_set_transform(randi() % Autoload.RANGE - Autoload.RANGE / 2, Transform(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
		else: #RANDI
			if randi() % 2 == 1:
				set_axis_lock(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
			if randi() % 2 == 1:
				set_safe_margin(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		
			if randi() % 2 == 1:
				qq += str(get_floor_velocity())
				
			if randi() % 2 == 1:
				for j in get_slide_count():
					qq += str(get_slide_collision(j).collider.name)
	
			if randi() % 2 == 1:
				qq += str(is_on_ceiling())
			if randi() % 2 == 1:
				qq += str(is_on_floor())
	
				if Autoload.SLOW_FUNCTIONS:
					qq += str(move_and_collide(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),bool(randi()%2),bool(randi()%2),bool(randi()%2)))
					qq += str(move_and_slide(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),bool(randi()%2),randi()%10, randf(), bool(randi()%2)))
					qq += str(move_and_slide_with_snap(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2), Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),bool(randi()%2),randi()%10,randf(),bool(randi()%2)))
		
					qq += str(test_move( Transform(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)), Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),bool(randi()%2)))
	
				# Physics Body
			if randi() % 2 == 1:
				set_collision_layer(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_collision_mask(randi() % Autoload.RANGE - Autoload.RANGE / 2)
	
			if randi() % 2 == 1:
				add_collision_exception_with(self)
	
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
				set_ray_pickable(bool(randi()%2))
			if randi() % 2 == 1:
				set_capture_input_on_drag(bool(randi()%2))
	
				###_input_event(get_parent().find_node("Camera"), InputEvent.new(), Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),randi() % Autoload.RANGE - Autoload.RANGE / 2)
	
			if randi() % 2 == 1:
				qq += str(create_shape_owner(self))
	
			if randi() % 2 == 1:
				qq += str(get_rid())
			if randi() % 2 == 1:
				qq += str(get_shape_owners())
	
			if randi() % 2 == 1:
				qq += str(is_shape_owner_disabled(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				remove_shape_owner(randi() % Autoload.RANGE - Autoload.RANGE / 2)
	
			if randi() % 2 == 1:
				qq += str(shape_find_owner(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				shape_owner_add_shape(randi() % Autoload.RANGE - Autoload.RANGE / 2,Shape.new())
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
				shape_owner_set_transform(randi() % Autoload.RANGE - Autoload.RANGE / 2, Transform(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
