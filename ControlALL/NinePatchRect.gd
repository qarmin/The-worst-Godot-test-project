extends NinePatchRect

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_NinePatchRect : NinePatchRect, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_NinePatchRect)
		AutoObjects.A_Node(q_NinePatchRect)
		AutoObjects.A_CanvasItem(q_NinePatchRect)
		AutoObjects.A_Control(q_NinePatchRect)
		
	### START TEMP
	var temp_ImageTexture : ImageTexture = ImageTexture.new()
#?#	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)
	
	### END TEMP
			
	if randi() % 2 == 1:
		q_NinePatchRect.set_texture(temp_ImageTexture)
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
