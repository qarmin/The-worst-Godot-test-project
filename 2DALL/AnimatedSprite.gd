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
		if !Autoload.RANDI:
			var node_temp : Node = load("res://RES/Node.tscn").instance()
			
			set_sprite_frames(load("res://RES/SpriteFrames.tres"))
			set_frame(randi()%3)
			set_animation("default")
			set_speed_scale(randf() * 50)
			_set_playing(bool(randi()%2))
			set_centered(bool(randi()%2))
			set_offset(Vector2(randf() * 50,randf() * 50))
			set_flip_h(bool(randi()%2))
			set_flip_v(bool(randi()%2))
			stop()
			play("default", bool(randi()%2))
			
			## Node2D
			set_position(Vector2(randf() * 50,randf() * 50))
			set_rotation(randf() * 50)
			set_rotation_degrees(randf() * 50)
			set_scale(Vector2(randf() * 50,randf() * 50))
			set_transform(Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
			set_global_position(Vector2(randf() * 50,randf() * 50))
			set_global_rotation(randf() * 50)
			set_global_rotation_degrees(randf() * 50)
			set_global_scale(Vector2(randf()+1,randf()+1))
			set_global_transform(Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
			set_z_index(randi()%4096 - 2048)
			set_z_as_relative(bool(randi()%2))
			apply_scale(Vector2(randf() * 1.01 +1,randf() * 50))
			qq += str(get_angle_to(Vector2(randf() * 50,randf() * 50)))
			qq += str(get_relative_transform_to_parent(get_parent()))
			global_translate(Vector2(randf() * 50,randf() * 50))
			look_at(Vector2(randf() * 50,randf() * 50))
			move_local_x(randf() * 50,bool(randi()%2))
			move_local_y(randf() * 50,bool(randi()%2))
			rotate(randf() * 50)
			qq += str(to_global(Vector2(randf() * 50,randf() * 50)))
			qq += str(to_local(Vector2(randf() * 50,randf() * 50)))
			translate(Vector2(randf() * 50,randf() * 50))
			
			# Canvas Item
			set_visible(bool(randi()%2))
			set_modulate(Color(randf(),randf(),randf(),randf()))
			set_self_modulate(Color(randf(),randf(),randf(),randf()))
			set_draw_behind_parent(bool(randi()%2))
			_set_on_top(bool(randi()%2))
			set_light_mask(randi()%50)
			set_material(load("res://RES/SpatialMaterial.tres"))
			set_use_parent_material(bool(randi()%2))
			
			###_draw()
			###draw_char(load("res://RES/DynamicFont1.tres"),Vector2(randf() * 50,randf() * 50),"Q","D",Color(randf(),randf(),randf(),randf()))
			###draw_circle(Vector2(randf() * 50,randf() * 50),randf() * 50,Color(randf(),randf(),randf(),randf()))
			###draw_colored_polygon(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]), Color(randf(),randf(),randf(),randf()), PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]),load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"), load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"),bool(randi()%2))
			###draw_line(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50), Color(randf(),randf(),randf(),randf()))
			###draw_mesh(
			###draw_multiline(
			###draw_multiline_colors(
			###draw_multimesh(
			###draw_polygon(
			###draw_polyline(
			###draw_polyline_colors(
			###draw_primitive(
			###draw_rect(
			###draw_set_transform(
			###draw_set_transform_matrix(
			###draw_string(
			###draw_style_box(
			###draw_texture(
			###draw_texture_rect(
			###draw_texture_rect_region(
			
			force_update_transform()
			
			qq += str(get_canvas())
			qq += str(get_canvas_item())
			qq += str(get_canvas_transform())
			qq += str(get_global_mouse_position())
			qq += str(get_global_transform())
			qq += str(get_global_transform_with_canvas())
			qq += str(get_local_mouse_position())
			qq += str(get_transform())
			qq += str(get_viewport_rect())
			qq += str(get_viewport_transform())
			qq += str(get_world_2d())
			
			hide()
			
			qq += str(is_local_transform_notification_enabled())
			qq += str(is_set_as_toplevel())
			qq += str(is_transform_notification_enabled())
			qq += str(is_visible_in_tree())
			
			qq += str(make_canvas_position_local(Vector2(randf() * 50,randf() * 50)))
			qq += str(make_input_local(load("res://RES/InputEventAction.tres")))
			
			set_as_toplevel(bool(randi()%2))
			set_notify_local_transform(bool(randi()%2))
			set_notify_transform(bool(randi()%2))
			
			show()
			update()
			
			# NODE OBJECT TODO
			
			## With Errors
			if Autoload.WRONG_BUGS:
				set_sprite_frames(load("res://RES/SpriteFrames.tres"))
				set_frame(randi() % 1000 - 500)
				set_animation("afqwgqagagasfqw")
				set_speed_scale(randf() * 1000 - 500)
				_set_playing(bool(randi()%2))
				set_centered(bool(randi()%2))
				set_offset(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
				set_flip_h(bool(randi()%2))
				set_flip_v(bool(randi()%2))
				stop()
				play("qwtdfaf", bool(randi()%2))
			
				## Node2D
				set_position(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
				set_rotation(randf() * 1000 - 500)
				set_rotation_degrees(randf() * 1000 - 500)
				set_scale(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
				set_transform(Transform2D(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
				set_global_position(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
				set_global_rotation(randf() * 1000 - 500)
				set_global_rotation_degrees(randf() * 1000 - 500)
				set_global_scale(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
				set_global_transform(Transform2D(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
				set_z_index(randi() % 1000 - 500)
				set_z_as_relative(bool(randi()%2))
				apply_scale(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
				qq += str(get_angle_to(Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
				qq += str(get_relative_transform_to_parent(node_temp))
				global_translate(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
				look_at(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
				move_local_x(randf() * 1000 - 500,bool(randi()%2))
				move_local_y(randf() * 1000 - 500,bool(randi()%2))
				rotate(randf() * 1000 - 500)
				qq += str(to_global(Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
				qq += str(to_local(Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
				translate(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
				
				# Canvas Item
				set_visible(bool(randi()%2))
				set_modulate(Color(randf(),randf(),randf(),randf()))
				set_self_modulate(Color(randf(),randf(),randf(),randf()))
				set_draw_behind_parent(bool(randi()%2))
				_set_on_top(bool(randi()%2))
				set_light_mask(randi() % 1000 - 500)
				set_material(load("res://RES/SpatialMaterial.tres"))
				set_use_parent_material(bool(randi()%2))
				
				###_draw()
				###draw_char(load("res://RES/DynamicFont1.tres"),Vector2(randf() * 1000 - 500,randf() * 1000 - 500),"Q","D",Color(randf(),randf(),randf(),randf()))
				###draw_circle(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),randf() * 1000 - 500,Color(randf(),randf(),randf(),randf()))
				###draw_colored_polygon(PoolVector2Array([Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)]), Color(randf(),randf(),randf(),randf()), PoolVector2Array([Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)]),load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"), load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"),bool(randi()%2))
				#draw_line(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500), Color(randf(),randf(),randf(),randf()))
				###draw_char(load("res://RES/DynamicFont1.tres"),Vector2(randf() * 50,randf() * 50),"Q","D",Color(randf(),randf(),randf(),randf()))
				###draw_circle(Vector2(randf() * 50,randf() * 50),randf() * 50,Color(randf(),randf(),randf(),randf()))
				###draw_colored_polygon(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]), Color(randf(),randf(),randf(),randf()), PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]),load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"), load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"),bool(randi()%2))
				###draw_line(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50), Color(randf(),randf(),randf(),randf()))
				###draw_mesh(
				###draw_multiline(
				###draw_multiline_colors(
				###draw_multimesh(
				###draw_polygon(
				###draw_polyline(
				###draw_polyline_colors(
				###draw_primitive(
				###draw_rect(
				###draw_set_transform(
				###draw_set_transform_matrix(
				###draw_string(
				###draw_style_box(
				###draw_texture(
				###draw_texture_rect(
				###draw_texture_rect_region(
				
				force_update_transform()
				
				qq += str(get_canvas())
				qq += str(get_canvas_item())
				qq += str(get_canvas_transform())
				qq += str(get_global_mouse_position())
				qq += str(get_global_transform())
				qq += str(get_global_transform_with_canvas())
				qq += str(get_local_mouse_position())
				qq += str(get_transform())
				qq += str(get_viewport_rect())
				qq += str(get_viewport_transform())
				qq += str(get_world_2d())
				
				hide()
				
				qq += str(is_local_transform_notification_enabled())
				qq += str(is_set_as_toplevel())
				qq += str(is_transform_notification_enabled())
				qq += str(is_visible_in_tree())
				
				qq += str(make_canvas_position_local(Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
				qq += str(make_input_local(load("res://RES/InputEventAction.tres")))
				
				set_as_toplevel(bool(randi()%2))
				set_notify_local_transform(bool(randi()%2))
				set_notify_transform(bool(randi()%2))
				
				show()
				update()
				
			node_temp.queue_free()
		else: ## RANDI
			var node_temp : Node = load("res://RES/Node.tscn").instance()
			print("A")
			if randi()%2 == 1:
				set_sprite_frames(load("res://RES/SpriteFrames.tres"))
			if randi()%2 == 1:
				set_frame(randi() % 1000 - 500)
			if randi()%2 == 1:
				set_animation("afqwgqagagasfqw")
			if randi()%2 == 1:
				set_speed_scale(randf() * 1000 - 500)
			if randi()%2 == 1:
				_set_playing(bool(randi()%2))
			if randi()%2 == 1:
				set_centered(bool(randi()%2))
			if randi()%2 == 1:
				set_offset(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
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
				set_position(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
			if randi()%2 == 1:
				set_rotation(randf() * 1000 - 500)
			if randi()%2 == 1:
				set_rotation_degrees(randf() * 1000 - 500)
			if randi()%2 == 1:
				set_scale(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
			if randi()%2 == 1:
				set_transform(Transform2D(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
			if randi()%2 == 1:
				set_global_position(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
			if randi()%2 == 1:
				set_global_rotation(randf() * 1000 - 500)
			if randi()%2 == 1:
				set_global_rotation_degrees(randf() * 1000 - 500)
			if randi()%2 == 1:
				set_global_scale(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
			if randi()%2 == 1:
				set_global_transform(Transform2D(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
			if randi()%2 == 1:
				set_z_index(randi() % 1000 - 500)
			if randi()%2 == 1:
				set_z_as_relative(bool(randi()%2))
			if randi()%2 == 1:
				apply_scale(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
			if randi()%2 == 1:
				qq += str(get_angle_to(Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
			if randi()%2 == 1:
				qq += str(get_relative_transform_to_parent(node_temp))
			if randi()%2 == 1:
				global_translate(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
			if randi()%2 == 1:
				look_at(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
			if randi()%2 == 1:
				move_local_x(randf() * 1000 - 500,bool(randi()%2))
			if randi()%2 == 1:
				move_local_y(randf() * 1000 - 500,bool(randi()%2))
			if randi()%2 == 1:
				rotate(randf() * 1000 - 500)
			if randi()%2 == 1:
				qq += str(to_global(Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
			if randi()%2 == 1:
				qq += str(to_local(Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
			if randi()%2 == 1:
				translate(Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
				
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
				set_light_mask(randi() % 1000 - 500)
			if randi()%2 == 1:
				set_material(load("res://RES/SpatialMaterial.tres"))
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
				qq += str(make_canvas_position_local(Vector2(randf() * 1000 - 500,randf() * 1000 - 500)))
			if randi()%2 == 1:
				qq += str(make_input_local(load("res://RES/InputEventAction.tres")))
				
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
