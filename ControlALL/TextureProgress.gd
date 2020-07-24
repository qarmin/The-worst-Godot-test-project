extends TextureProgress

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_TextureProgress: TextureProgress, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_TextureProgress)
		AutoObjects.A_Node(q_TextureProgress)
		AutoObjects.A_CanvasItem(q_TextureProgress)
		AutoObjects.A_Control(q_TextureProgress)
		AutoObjects.A_Range(q_TextureProgress)

	### START TEMP
	var temp_ImageTexture: ImageTexture = ImageTexture.new()
#?#	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)

	### END TEMP

	if randi() % 2 == 1:
		q_TextureProgress.set_under_texture(temp_ImageTexture)
	if randi() % 2 == 1:
		q_TextureProgress.set_over_texture(temp_ImageTexture)
	if randi() % 2 == 1:
		q_TextureProgress.set_progress_texture(temp_ImageTexture)
	if randi() % 2 == 1:
		q_TextureProgress.set_fill_mode(Autoload.get_int())
	if randi() % 2 == 1:
		q_TextureProgress.set_tint_under(Autoload.get_color())
	if randi() % 2 == 1:
		q_TextureProgress.set_tint_over(Autoload.get_color())
	if randi() % 2 == 1:
		q_TextureProgress.set_tint_progress(Autoload.get_color())
	if randi() % 2 == 1:
		q_TextureProgress.set_radial_initial_angle(Autoload.get_float())
	if randi() % 2 == 1:
		q_TextureProgress.set_fill_degrees(Autoload.get_float())
	if randi() % 2 == 1:
		q_TextureProgress.set_radial_center_offset(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_TextureProgress.set_nine_patch_stretch(Autoload.get_bool())
	if randi() % 2 == 1:
		q_TextureProgress.set("stretch_margin_left", Autoload.get_int())
	if randi() % 2 == 1:
		q_TextureProgress.set("stretch_margin_top", Autoload.get_int())
	if randi() % 2 == 1:
		q_TextureProgress.set("stretch_margin_right", Autoload.get_int())
	if randi() % 2 == 1:
		q_TextureProgress.set("stretch_margin_bottom", Autoload.get_int())
