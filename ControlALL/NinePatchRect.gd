extends NinePatchRect

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			set_draw_center(Autoload.get_bool())
		if randi() % 2 == 1:
			set_region_rect(Autoload.get_rect2())
		if randi() % 2 == 1:
			set("patch_margin_left", Autoload.get_int())
		if randi() % 2 == 1:
			set("patch_margin_top", Autoload.get_int())
		if randi() % 2 == 1:
			set("patch_margin_right", Autoload.get_int())
		if randi() % 2 == 1:
			set("patch_margin_bottom", Autoload.get_int())
		if randi() % 2 == 1:
			set_h_axis_stretch_mode(Autoload.get_int())
		if randi() % 2 == 1:
			set_v_axis_stretch_mode(Autoload.get_int())
