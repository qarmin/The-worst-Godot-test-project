extends AnimatedSprite

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)
var right = false

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	#  Vector2(randf() * 50,randf() * 50))
	#  randf() * 50)
	#  bool(randi()%2))
	#  randi()%50)
	#  Color(randf(),randf(),randf(),randf()))
	#  load("res://Sprite" + str(randi()%4 + 1) + ".png"))
	
	position.x += (int(right) * 2 - 1) * delta * 100
	if position.x > 1280:
		right = false
	elif position.x < 0:
		right = true
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_sprite_frames(get_sprite_frames())
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
		set_material(SpatialMaterial.new())
		set_use_parent_material(bool(randi()%2))
		
		###_draw()
		#draw_char(load("res://DynamicFont1.tres"),Vector2(randf() * 50,randf() * 50),"Q","D",Color(randf(),randf(),randf(),randf()))
		#draw_circle(Vector2(randf() * 50,randf() * 50),randf() * 50,Color(randf(),randf(),randf(),randf()))
		#draw_colored_polygon(PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]), Color(randf(),randf(),randf(),randf()), PoolVector2Array([Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)]),load("res://Sprite" + str(randi()%4 + 1) + ".png"), load("res://Sprite" + str(randi()%4 + 1) + ".png"),bool(randi()%2))
		#draw_line(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50), Color(randf(),randf(),randf(),randf()))
#		draw_mesh(
#		draw_multiline(
#		draw_multiline_colors(
#		draw_multimesh(
#		draw_polygon(
#		draw_polyline(
#		draw_polyline_colors(
#		draw_primitive(
#		draw_rect(
#		draw_set_transform(
#		draw_set_transform_matrix(
#		draw_string(
#		draw_style_box(
#		draw_texture(
#		draw_texture_rect(
#		draw_texture_rect_region(
		
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
		#make_input_local(InputEvent.new())
		
		set_as_toplevel(bool(randi()%2))
		set_notify_local_transform(bool(randi()%2))
		set_notify_transform(bool(randi()%2))
		
		show()
		update()
		
		# NODE OBJECT TODO
		
		## With Errors
		if Autoload.WRONG_BUGS:
			set_sprite_frames(SpriteFrames.new())
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