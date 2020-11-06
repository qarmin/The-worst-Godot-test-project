extends Sprite2D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_Sprite2D: Sprite2D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Sprite2D)
		AutoObjects.A_Node(q_Sprite2D)
		AutoObjects.A_CanvasItem(q_Sprite2D)
		AutoObjects.A_Node2D(q_Sprite2D)

	### START TEMP
	var temp_ImageTexture: ImageTexture = ImageTexture.new()
#?#	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)

	### END TEMP

	if randi() % 2 == 1:
		q_Sprite2D.set_texture(temp_ImageTexture)
#	if randi() % 2 == 1:
#		q_Sprite2D.set_normal_map(temp_ImageTexture)
	if randi() % 2 == 1:
		q_Sprite2D.set_centered(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Sprite2D.set_offset(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Sprite2D.set_flip_h(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Sprite2D.set_flip_v(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Sprite2D.set_vframes(Autoload.get_int())
	if randi() % 2 == 1:
		q_Sprite2D.set_hframes(Autoload.get_int())
	if randi() % 2 == 1:
		q_Sprite2D.set_frame(Autoload.get_int())
	if randi() % 2 == 1:
		q_Sprite2D.set_frame_coords(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Sprite2D.set_region(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Sprite2D.set_region_rect(Autoload.get_rect2())
	if randi() % 2 == 1:
		q_Sprite2D.set_region_filter_clip(Autoload.get_bool())

	if randi() % 2 == 1:
		q_Sprite2D.get_rect()
	if randi() % 2 == 1:
		q_Sprite2D.is_pixel_opaque(Autoload.get_vector2())
