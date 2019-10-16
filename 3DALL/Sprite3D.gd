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

		if randi() % 2 == 1:
			set_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_vframes(Autoload.get_int())
		if randi() % 2 == 1:
			set_hframes(Autoload.get_int())
		if randi() % 2 == 1:
			set_frame(Autoload.get_int())
		if randi() % 2 == 1:
			set_region(Autoload.get_bool())
		if randi() % 2 == 1:
			set_region_rect(Autoload.get_rect2())

			#SPRITE BASED
		if randi() % 2 == 1:
			set_centered(Autoload.get_bool())
		if randi() % 2 == 1:
			set_offset(Autoload.get_vector2())
		if randi() % 2 == 1:
			set_flip_h(Autoload.get_bool())
		if randi() % 2 == 1:
			set_flip_v(Autoload.get_bool())
		if randi() % 2 == 1:
			set_modulate(Autoload.get_color())
		if randi() % 2 == 1:
			set_opacity(Autoload.get_float())
		if randi() % 2 == 1:
			set_pixel_size(Autoload.get_float())
		if randi() % 2 == 1:
			set_axis(Autoload.get_int())
		if randi() % 2 == 1:
			set_draw_flag(Autoload.get_int(),Autoload.get_bool())
		if randi() % 2 == 1:
			set_alpha_cut_mode(Autoload.get_int())
		if randi() % 2 == 1:
			qq += str(generate_triangle_mesh())
		if randi() % 2 == 1:
			qq += str(get_item_rect())
