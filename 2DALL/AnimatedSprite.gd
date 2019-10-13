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
			set_sprite_frames(Autoload.loadA("SpriteFrames.tres"))
		if randi()%2 == 1:
			set_frame(Autoload.get_int())
		if randi()%2 == 1:
			set_animation(Autoload.get_string())
		if randi()%2 == 1:
			set_speed_scale(Autoload.get_float())
		if randi()%2 == 1:
			_set_playing(Autoload.get_bool())
		if randi()%2 == 1:
			set_centered(Autoload.get_bool())
		if randi()%2 == 1:
			set_offset(Autoload.get_vector2())
		if randi()%2 == 1:
			set_flip_h(Autoload.get_bool())
		if randi()%2 == 1:
			set_flip_v(Autoload.get_bool())
		if randi()%2 == 1:
			stop()
		if randi()%2 == 1:
			play(Autoload.get_string(), Autoload.get_bool())
		
			## Node2D
		if randi()%2 == 1:
			set_position(Autoload.get_vector2())
		if randi()%2 == 1:
			set_rotation(Autoload.get_float())
		if randi()%2 == 1:
			set_rotation_degrees(Autoload.get_float())
		if randi()%2 == 1:
			set_scale(Autoload.get_vector2())
		if randi()%2 == 1:
			set_transform(Autoload.get_transform2d())
		if randi()%2 == 1:
			set_global_position(Autoload.get_vector2())
		if randi()%2 == 1:
			set_global_rotation(Autoload.get_float())
		if randi()%2 == 1:
			set_global_rotation_degrees(Autoload.get_float())
		if randi()%2 == 1:
			set_global_scale(Autoload.get_vector2())
		if randi()%2 == 1:
			set_global_transform(Autoload.get_transform2d())
		if randi()%2 == 1:
			set_z_index(Autoload.get_int())
		if randi()%2 == 1:
			set_z_as_relative(Autoload.get_bool())
		if randi()%2 == 1:
			apply_scale(Autoload.get_vector2())
		if randi()%2 == 1:
			qq += str(get_angle_to(Autoload.get_vector2()))
		if randi()%2 == 1:
			qq += str(get_relative_transform_to_parent(node_temp))
		if randi()%2 == 1:
			global_translate(Autoload.get_vector2())
		if randi()%2 == 1:
			look_at(Autoload.get_vector2())
		if randi()%2 == 1:
			move_local_x(Autoload.get_float(),Autoload.get_bool())
		if randi()%2 == 1:
			move_local_y(Autoload.get_float(),Autoload.get_bool())
		if randi()%2 == 1:
			rotate(Autoload.get_float())
		if randi()%2 == 1:
			qq += str(to_global(Autoload.get_vector2()))
		if randi()%2 == 1:
			qq += str(to_local(Autoload.get_vector2()))
		if randi()%2 == 1:
			translate(Autoload.get_vector2())
			
			# Canvas Item
		if randi()%2 == 1:
			set_visible(Autoload.get_bool())
		if randi()%2 == 1:
			set_modulate(Autoload.get_color())
		if randi()%2 == 1:
			set_self_modulate(Autoload.get_color())
		if randi()%2 == 1:
			set_draw_behind_parent(Autoload.get_bool())
		if randi()%2 == 1:
			_set_on_top(Autoload.get_bool())
		if randi()%2 == 1:
			set_light_mask(Autoload.get_int())
		if randi()%2 == 1:
			set_material(Autoload.loadA("SpatialMaterial.tres"))
		if randi()%2 == 1:
			set_use_parent_material(Autoload.get_bool())
			
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
			qq += str(make_canvas_position_local(Autoload.get_vector2()))
		if randi()%2 == 1:
			qq += str(make_input_local(Autoload.loadA("InputEventAction.tres")))
			
		if randi()%2 == 1:
			set_as_toplevel(Autoload.get_bool())
		if randi()%2 == 1:
			set_notify_local_transform(Autoload.get_bool())
		if randi()%2 == 1:
			set_notify_transform(Autoload.get_bool())
			
		if randi()%2 == 1:
			show()
		if randi()%2 == 1:
			update()
			
		node_temp.queue_free()
