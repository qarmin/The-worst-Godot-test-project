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
		
		set_axis_lock(Vector3.AXIS_X,bool(randi()%2))
		set_axis_lock(Vector3.AXIS_Y,bool(randi()%2))
		set_axis_lock(Vector3.AXIS_Z,bool(randi()%2))
		set_safe_margin(randf() * 50)

		qq += str(get_floor_velocity())
		for j in get_slide_count():
			qq += str(get_slide_collision(j).collider.name)
			
		qq += str(is_on_ceiling())
		qq += str(is_on_floor())
		
		qq += str(Vector3(randf() * 50,randf() * 50,randf() * 50),bool(randi()%2),bool(randi()%2),bool(randi()%2))
		#qq += str(move_and_slide(Vector3(randf() * 50,randf() * 50,randf() * 50), Vector3(randf() * 50,randf() * 50,randf() * 50),bool(randi()%2),randi()%10, randf(), bool(randi()%2)))
		#qq += str(move_and_slide_with_snap(Vector3(randf() * 50,randf() * 50,randf() * 50), Vector3(randf() * 50,randf() * 50,randf() * 50), Vector3(randf() * 50,randf() * 50,randf() * 50),bool(randi()%2),randi()%10,randf(),bool(randi()%2)))

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
			set_axis_lock(Vector3.AXIS_X,bool(randi()%2))
			set_axis_lock(Vector3.AXIS_Y,bool(randi()%2))
			set_axis_lock(Vector3.AXIS_Z,bool(randi()%2))
			set_safe_margin(randf() * 1000 - 500)
	
#			qq += str(get_floor_velocity())
#			for j in get_slide_count():
#				qq += str(get_slide_collision(j).collider.name)
#
#			qq += str(is_on_ceiling())
#			qq += str(is_on_floor())
#
#			qq += str(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),bool(randi()%2),bool(randi()%2),bool(randi()%2))
#			qq += str(move_and_slide(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500), Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),bool(randi()%2),randi()%10, randf(), bool(randi()%2)))
#			qq += str(move_and_slide_with_snap(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500), Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500), Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),bool(randi()%2),randi()%10,randf(),bool(randi()%2)))
#
#			qq += str(test_move( Transform(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)), Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),bool(randi()%2)))
#
#			# Physics Body
#			set_collision_layer(randi()%50000)
#			set_collision_mask(randi()%50000)
#
#			add_collision_exception_with(self)
#
#			qq += str(get_collision_exceptions())
#			qq += str(get_collision_layer_bit(randi() % 1000 - 500))
#			qq += str(get_collision_mask_bit(randi() % 1000 - 500))
#
#			remove_collision_exception_with(self)
#
#			set_collision_layer_bit(randi() % 1000 - 500,bool(randi()%2))
#			set_collision_mask_bit(randi() % 1000 - 500,bool(randi()%2))
#
#			# Collision Object
#			set_ray_pickable(bool(randi()%2))
#			set_capture_input_on_drag(bool(randi()%2))
#
#			###_input_event(get_parent().find_node("Camera"), InputEvent.new(), Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),randi() % 1000 - 500)
#
#			qq += str(create_shape_owner(self))
#
#			qq += str(get_rid())
#			qq += str(get_shape_owners())
#
#			qq += str(is_shape_owner_disabled(randi() % 1000 - 500))
#			remove_shape_owner(randi() % 1000 - 500)
#
#			qq += str(shape_find_owner(randi() % 1000 - 500))
#			shape_owner_add_shape(randi() % 1000 - 500,Shape.new())
#			shape_owner_clear_shapes(randi() % 1000 - 500)
#			qq += str(shape_owner_get_owner(randi() % 1000 - 500))
#			qq += str(shape_owner_get_shape(randi() % 1000 - 500,randi() % 1000 - 500))
#			qq += str(shape_owner_get_shape_count(randi() % 1000 - 500))
#			qq += str(shape_owner_get_shape_index(randi() % 1000 - 500,randi() % 1000 - 500))
#			qq += str(shape_owner_get_transform(randi() % 1000 - 500))
#			shape_owner_remove_shape(randi() % 1000 - 500,randi() % 1000 - 500)
#			shape_owner_set_disabled(randi() % 1000 - 500,bool(randi()%2))
#			shape_owner_set_transform(randi() % 1000 - 500, Transform(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
