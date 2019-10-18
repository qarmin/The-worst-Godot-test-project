extends NinePatchRect

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Control(self)
		nodeFunction(self)

func nodeFunction(q_NinePatchRect : NinePatchRect) -> void:

		if randi() % 2 == 1:
			q_NinePatchRect.set_texture(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			q_NinePatchRect.set_draw_center(Autoload.get_bool())
		if randi() % 2 == 1:
			q_NinePatchRect.set_region_rect(Autoload.get_rect2())
		if randi() % 2 == 1:
			q_NinePatchRect.set("patch_margin_left", Autoload.get_int())
		if randi() % 2 == 1:
			q_NinePatchRect.set("patch_margin_top", Autoload.get_int())
		if randi() % 2 == 1:
			q_NinePatchRect.set("patch_margin_right", Autoload.get_int())
		if randi() % 2 == 1:
			q_NinePatchRect.set("patch_margin_bottom", Autoload.get_int())
		if randi() % 2 == 1:
			q_NinePatchRect.set_h_axis_stretch_mode(Autoload.get_int())
		if randi() % 2 == 1:
			q_NinePatchRect.set_v_axis_stretch_mode(Autoload.get_int())
