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
			set_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
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
