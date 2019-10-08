extends Sprite3D

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
		if !Autoload.RANDI:
			
			set_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			set_vframes(randi()%50 + 10)
			set_hframes(randi()%50 + 10)
			set_frame(randi()%50)
			set_region(bool(randi()%2))
			set_region_rect(Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
			
			#SPRITE BASED
			set_centered(bool(randi()%2))
			set_offset(Vector2(randf() * 50,randf() * 50))
			set_flip_h(bool(randi()%2))
			set_flip_v(bool(randi()%2))
			set_modulate(Color(randf(),randf(),randf(),randf()))
			set_opacity(randf() * 50)
			set_pixel_size(randf() * 50)
			set_axis(randi() % 3)
			for i in range(FLAG_MAX):
				set_draw_flag(i,bool(randi()%2))
			set_alpha_cut_mode(randi() % 3)
			qq += str(generate_triangle_mesh())
			qq += str(get_item_rect())
			
			if Autoload.WRONG_BUGS:
				set_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				set_vframes(randi()%50 - 25)
				set_hframes(randi()%50 - 25)
				set_frame(randi() % 100 - 50)
				set_region(bool(randi()%2))
				set_region_rect(Rect2(Vector2(randf() * 100 - 50,randf() * 100 - 50),Vector2(randf() * 100 - 50,randf() * 100 - 50)))
	
				#SPRITE BASED
				set_centered(bool(randi()%2))
				set_offset(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				set_flip_h(bool(randi()%2))
				set_flip_v(bool(randi()%2))
				set_modulate(Color(randf(),randf(),randf(),randf()))
				set_opacity(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_pixel_size(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_axis(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				set_draw_flag(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
				set_alpha_cut_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				qq += str(generate_triangle_mesh())
				qq += str(get_item_rect())
	
		else: #RANDI
			if randi() % 2 == 1:
				set_texture(load("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			if randi() % 2 == 1:
				set_vframes(randi()%50 - 25)
			if randi() % 2 == 1:
				set_hframes(randi()%50 - 25)
			if randi() % 2 == 1:
				set_frame(randi() % 100 - 50)
			if randi() % 2 == 1:
				set_region(bool(randi()%2))
			if randi() % 2 == 1:
				set_region_rect(Rect2(Vector2(randf() * 100 - 50,randf() * 100 - 50),Vector2(randf() * 100 - 50,randf() * 100 - 50)))
	
				#SPRITE BASED
			if randi() % 2 == 1:
				set_centered(bool(randi()%2))
			if randi() % 2 == 1:
				set_offset(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				set_flip_h(bool(randi()%2))
			if randi() % 2 == 1:
				set_flip_v(bool(randi()%2))
			if randi() % 2 == 1:
				set_modulate(Color(randf(),randf(),randf(),randf()))
			if randi() % 2 == 1:
				set_opacity(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_pixel_size(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_axis(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_draw_flag(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
			if randi() % 2 == 1:
				set_alpha_cut_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				qq += str(generate_triangle_mesh())
			if randi() % 2 == 1:
				qq += str(get_item_rect())
