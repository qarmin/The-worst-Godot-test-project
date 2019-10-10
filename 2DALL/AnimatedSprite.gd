extends AnimatedSprite

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

		var node_temp : Node = load("res://RES/Node.tscn").instance()
		add_child(node_temp)
		
		if randi()%2 == 1:
			set_sprite_frames(Autoload.loadA("res://RES/SpriteFrames.tres"))
		if randi()%2 == 1:
			set_frame(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi()%2 == 1:
			set_animation("afqwgqagagasfqw")
		if randi()%2 == 1:
			set_speed_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi()%2 == 1:
			_set_playing(bool(randi()%2))
		if randi()%2 == 1:
			set_centered(bool(randi()%2))
		if randi()%2 == 1:
			set_offset(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi()%2 == 1:
			set_flip_h(bool(randi()%2))
		if randi()%2 == 1:
			set_flip_v(bool(randi()%2))
		if randi()%2 == 1:
			stop()
		if randi()%2 == 1:
			play("qwtdfaf", bool(randi()%2))
		
			## Node2D
		if randi()%2 == 1:
			set_position(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi()%2 == 1:
			set_rotation(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi()%2 == 1:
			set_rotation_degrees(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi()%2 == 1:
			set_scale(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi()%2 == 1:
			set_transform(Transform2D(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
		if randi()%2 == 1:
			set_global_position(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi()%2 == 1:
			set_global_rotation(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi()%2 == 1:
			set_global_rotation_degrees(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi()%2 == 1:
			set_global_scale(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi()%2 == 1:
			set_global_transform(Transform2D(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
		if randi()%2 == 1:
			set_z_index(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi()%2 == 1:
			set_z_as_relative(bool(randi()%2))
		if randi()%2 == 1:
			apply_scale(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi()%2 == 1:
			qq += str(get_angle_to(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
		if randi()%2 == 1:
			qq += str(get_relative_transform_to_parent(node_temp))
		if randi()%2 == 1:
			global_translate(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi()%2 == 1:
			look_at(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi()%2 == 1:
			move_local_x(randf() * Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
		if randi()%2 == 1:
			move_local_y(randf() * Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
		if randi()%2 == 1:
			rotate(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi()%2 == 1:
			qq += str(to_global(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
		if randi()%2 == 1:
			qq += str(to_local(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
		if randi()%2 == 1:
			translate(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			
			# Canvas Item
		if randi()%2 == 1:
			set_visible(bool(randi()%2))
		if randi()%2 == 1:
			set_modulate(Color(randf(),randf(),randf(),randf()))
		if randi()%2 == 1:
			set_self_modulate(Color(randf(),randf(),randf(),randf()))
		if randi()%2 == 1:
			set_draw_behind_parent(bool(randi()%2))
		if randi()%2 == 1:
			_set_on_top(bool(randi()%2))
		if randi()%2 == 1:
			set_light_mask(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi()%2 == 1:
			set_material(Autoload.loadA("res://RES/SpatialMaterial.tres"))
		if randi()%2 == 1:
			set_use_parent_material(bool(randi()%2))
			
		if randi()%2 == 1:
			force_update_transform()
			
		if randi()%2 == 1:
			qq += str(get_canvas())
		if randi()%2 == 1:
			qq += str(get_canvas_item())
		if randi()%2 == 1:
			qq += str(get_canvas_transform())
		if randi()%2 == 1:
			qq += str(get_global_mouse_position())
		if randi()%2 == 1:
			qq += str(get_global_transform())
		if randi()%2 == 1:
			qq += str(get_global_transform_with_canvas())
		if randi()%2 == 1:
			qq += str(get_local_mouse_position())
		if randi()%2 == 1:
			qq += str(get_transform())
		if randi()%2 == 1:
			qq += str(get_viewport_rect())
		if randi()%2 == 1:
			qq += str(get_viewport_transform())
		if randi()%2 == 1:
			qq += str(get_world_2d())
			
		if randi()%2 == 1:
			hide()
			
		if randi()%2 == 1:
			qq += str(is_local_transform_notification_enabled())
		if randi()%2 == 1:
			qq += str(is_set_as_toplevel())
		if randi()%2 == 1:
			qq += str(is_transform_notification_enabled())
		if randi()%2 == 1:
			qq += str(is_visible_in_tree())
			
		if randi()%2 == 1:
			qq += str(make_canvas_position_local(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
		if randi()%2 == 1:
			qq += str(make_input_local(Autoload.loadA("res://RES/InputEventAction.tres")))
			
		if randi()%2 == 1:
			set_as_toplevel(bool(randi()%2))
		if randi()%2 == 1:
			set_notify_local_transform(bool(randi()%2))
		if randi()%2 == 1:
			set_notify_transform(bool(randi()%2))
			
		if randi()%2 == 1:
			show()
		if randi()%2 == 1:
			update()
			
		node_temp.queue_free()
