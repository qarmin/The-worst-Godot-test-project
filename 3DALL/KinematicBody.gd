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

		if randi() % 2 == 1:
			set_axis_lock(Autoload.get_randi(),bool(randi()%2))
		if randi() % 2 == 1:
			set_safe_margin(Autoload.get_randf())
	
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
				qq += str(move_and_collide(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),bool(randi()%2),bool(randi()%2),bool(randi()%2)))
				qq += str(move_and_slide(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()), Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),bool(randi()%2),randi()%10, randf(), bool(randi()%2)))
				qq += str(move_and_slide_with_snap(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()), Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()), Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),bool(randi()%2),randi()%10,randf(),bool(randi()%2)))
	
				qq += str(test_move( Transform(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())), Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),bool(randi()%2)))

			# Physics Body
		if randi() % 2 == 1:
			set_collision_layer(Autoload.get_randi())
		if randi() % 2 == 1:
			set_collision_mask(Autoload.get_randi())

		if randi() % 2 == 1:
			add_collision_exception_with(self)

		if randi() % 2 == 1:
			qq += str(get_collision_exceptions())
		if randi() % 2 == 1:
			qq += str(get_collision_layer_bit(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_collision_mask_bit(Autoload.get_randi()))

		if randi() % 2 == 1:
			remove_collision_exception_with(self)

		if randi() % 2 == 1:
			set_collision_layer_bit(Autoload.get_randi(),bool(randi()%2))
		if randi() % 2 == 1:
			set_collision_mask_bit(Autoload.get_randi(),bool(randi()%2))

			# Collision Object
		if randi() % 2 == 1:
			set_ray_pickable(bool(randi()%2))
		if randi() % 2 == 1:
			set_capture_input_on_drag(bool(randi()%2))

			###_input_event(get_parent().find_node(Autoload.get_string()), InputEvent.new(), Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Autoload.get_randi())

		if randi() % 2 == 1:
			qq += str(create_shape_owner(self))

		if randi() % 2 == 1:
			qq += str(get_rid())
		if randi() % 2 == 1:
			qq += str(get_shape_owners())

		if randi() % 2 == 1:
			qq += str(is_shape_owner_disabled(Autoload.get_randi()))
		if randi() % 2 == 1:
			remove_shape_owner(Autoload.get_randi())

		if randi() % 2 == 1:
			qq += str(shape_find_owner(Autoload.get_randi()))
		if randi() % 2 == 1:
			shape_owner_add_shape(Autoload.get_randi(),BoxShape.new())
		if randi() % 2 == 1:
			shape_owner_clear_shapes(Autoload.get_randi())
		if randi() % 2 == 1:
			qq += str(shape_owner_get_owner(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(shape_owner_get_shape(Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(shape_owner_get_shape_count(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(shape_owner_get_shape_index(Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(shape_owner_get_transform(Autoload.get_randi()))
		if randi() % 2 == 1:
			shape_owner_remove_shape(Autoload.get_randi(),Autoload.get_randi())
		if randi() % 2 == 1:
			shape_owner_set_disabled(Autoload.get_randi(),bool(randi()%2))
		if randi() % 2 == 1:
			shape_owner_set_transform(Autoload.get_randi(), Transform(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())))
